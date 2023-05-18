import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasa_apod/core/connection_status/connection_status_impl.dart';
import 'package:nasa_apod/modules/home/presentation/page/sections/toast_section.dart';

import '../../../../../core/connection_status/connection_status.dart';
import '../../../../../core/const/images.dart';
import '../../../../../core/const/regex.dart';
import '../../../../../core/const/routes.dart';
import '../../../../../core/const/strings.dart';
import '../../../../../core/styles/colors.dart';
import '../../../domain/entities/apod_entity.dart';
import '../../bloc/apod_bloc.dart';
import '../../bloc/apod_event.dart';
import '../../bloc/apod_state.dart';
import '../../widget/image_apod_widget.dart';
import '../../widget/text_form_field_widget.dart';
import 'loading_more_apods_section.dart';

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
  late final ConnectionStatus connectionStatus;

  late final ScrollController _scrollController;
  late final TextEditingController _textEditingController;

  late final FocusNode _focusNode;

  bool isLoading = false;
  bool hasInternet = false;
  List<ApodEntity> filteredList = [];

  @override
  void initState() {
    super.initState();

    connectionStatus = ConnectionStatusImpl();

    filteredList.addAll(widget.apodEntityList);

    _textEditingController = TextEditingController();

    _scrollController = ScrollController();
    _scrollController.addListener(scrollListener);

    _focusNode = FocusNode(canRequestFocus: false);
  }

  @override
  void dispose() {
    super.dispose();

    _textEditingController.dispose();
    _scrollController.dispose();

    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApodBloc, ApodState>(
      bloc: widget.apodBloc,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          failure: (message) => ToastSection.toast(
            context: context,
            message: message,
            title: 'Error',
            duration: const Duration(seconds: 3),
          ),
          success: (apodEntity) {
            isLoading = false;
            filteredList.clear();
            filteredList.addAll(apodEntity);
          },
        );
      },
      child: Column(
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            AppImages.nasaLogo,
            width: 75,
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: TextFormFieldWidget(
              hintText: AppStrings.searchHintText,
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
              itemCount: filteredList.length + 1,
              itemBuilder: (context, index) {
                if (index < filteredList.length) {
                  return Padding(
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
                  );
                } else {
                  return isLoading
                      ? const LoadMoreApodsSection()
                      : const SizedBox();
                }
              },
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
    final internet = await connectionStatus.isConnected();
    if (internet == true) {
      final dateTime = DateTime.parse(date);
      final finalDateTime = dateTime.subtract(const Duration(days: 10));

      String formattedDateTime =
          '${finalDateTime.year.toString().padLeft(4, '0')}-'
          '${finalDateTime.month.toString().padLeft(2, '0')}-'
          '${finalDateTime.day.toString().padLeft(2, '0')}';

      if (isLoading == false) {
        widget.apodBloc.add(
          ApodEvent.getMoreApods(startDate: formattedDateTime),
        );
        setState(() {
          isLoading = true;
        });
      }
    }
  }

  void scrollListener() async {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        filteredList.length == widget.apodEntityList.length) {
      await getNextDates(filteredList.last.date);
    }
  }
}
