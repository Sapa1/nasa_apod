import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/const/regex.dart';
import '../../../../../core/const/routes.dart';
import '../../../../../core/styles/colors.dart';
import '../../../domain/entities/apod_entity.dart';
import '../../bloc/apod_bloc.dart';
import '../../bloc/apod_event.dart';
import '../../bloc/apod_state.dart';
import '../../widget/image_apod_widget.dart';
import '../../widget/text_form_field_widget.dart';

class ApodSection extends StatefulWidget {
  final List<ApodEntity> apodEntityList;
  final ApodBloc apodBloc;

  const ApodSection({
    required this.apodEntityList,
    required this.apodBloc,
    super.key,
  });

  @override
  State<ApodSection> createState() => _ApodSectionState();
}

class _ApodSectionState extends State<ApodSection> {
  late final FocusNode _focusNode;
  late final TextEditingController _textEditingController;
  final _scrollController = ScrollController();

  List<ApodEntity> filteredList = [];

  @override
  void initState() {
    super.initState();

    filteredList.addAll(widget.apodEntityList);

    _focusNode = FocusNode();
    _textEditingController = TextEditingController();
    _scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
    _focusNode.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApodBloc, ApodState>(
      bloc: widget.apodBloc,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => const Center(
            child: Text('Orelse'),
          ),
          success: (apodEntity) {
            filteredList.clear();
            filteredList.addAll(apodEntity);
          },
        );
      },
      child: Column(
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            'assets/images/nasa_logo.svg',
            width: 75,
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: TextFormFieldWidget(
              hintText: 'Search by title or date',
              focusNode: _focusNode,
              cursorColor: AppColors.gray,
              autofocus: false,
              controller: _textEditingController,
              keyboardType: TextInputType.name,
              onChanged: (value) => searchImage(
                entityList: widget.apodEntityList,
                search: value,
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              controller: _scrollController,
              shrinkWrap: true,
              itemCount: filteredList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ImageApodWidget(
                  type: WidgetType.mainInfo,
                  url: filteredList[index].url,
                  title: filteredList[index].title,
                  date: filteredList[index].date,
                  description: filteredList[index].description,
                  onTap: () => Modular.to.pushNamed(
                    AppRoutes.detailsPage,
                    arguments: {
                      'entity': filteredList[index],
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void searchImage(
      {required String search, required List<ApodEntity> entityList}) {
    final filter = entityList.where((apod) {
      if (search.startsWith(AppRegexp.numbers)) {
        final imageDate = apod.date.toLowerCase();
        final input = search.toLowerCase();

        return imageDate.contains(input);
      } else {
        final imageTitle = apod.title.toLowerCase();
        final input = search.toLowerCase();

        return imageTitle.contains(input);
      }
    }).toList();

    if (search.isEmpty) {
      filteredList.clear();
      filteredList.addAll(widget.apodEntityList);
    }

    setState(() {
      filteredList = filter;
    });
  }

  Future getNextDates(String date) async {
    final dateTime = DateTime.parse(date);
    final finalDateTime = dateTime.subtract(const Duration(days: 10));

    String formattedDateTime =
        '${finalDateTime.year.toString().padLeft(4, '0')}-'
        '${finalDateTime.month.toString().padLeft(2, '0')}-'
        '${finalDateTime.day.toString().padLeft(2, '0')}';

    widget.apodBloc.add(ApodEvent.getApod(startDate: formattedDateTime));
  }

  void scrollListener() async {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        filteredList.length == widget.apodEntityList.length) {
      await getNextDates(filteredList.last.date);
      _scrollController.position.context;
    }
  }
}
