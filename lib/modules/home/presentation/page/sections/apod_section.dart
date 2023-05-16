import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/const/regex.dart';
import '../../../../../core/const/routes.dart';
import '../../../../../core/styles/colors.dart';
import '../../../domain/entities/apod_entity.dart';
import '../../widget/image_apod_widget.dart';
import '../../widget/text_form_field_widget.dart';

class ApodSection extends StatefulWidget {
  final List<ApodEntity> apodEntityList;

  const ApodSection({
    required this.apodEntityList,
    super.key,
  });

  @override
  State<ApodSection> createState() => _ApodSectionState();
}

class _ApodSectionState extends State<ApodSection> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  List<ApodEntity>? filteredList;

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    if (filteredList == null) {
      return buildInitial(context);
    } else {
      return buildFiltered(context);
    }
  }

  Widget buildInitial(BuildContext context) => Column(
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
              controller: _controller,
              keyboardType: TextInputType.name,
              onChanged: (value) => searchImage(
                entityList: widget.apodEntityList,
                search: value,
              ),
            ),
          ),
          ListView.builder(
            reverse: true,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.apodEntityList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ImageApodWidget(
                type: WidgetType.mainInfo,
                url: widget.apodEntityList[index].url,
                title: widget.apodEntityList[index].title,
                date: widget.apodEntityList[index].date,
                description: widget.apodEntityList[index].description,
                onTap: () => Modular.to.pushNamed(
                  AppRoutes.detailsPage,
                  arguments: {
                    'entity': widget.apodEntityList[index],
                  },
                ),
              ),
            ),
          ),
        ],
      );
  Widget buildFiltered(BuildContext context) => Column(
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
              controller: _controller,
              keyboardType: TextInputType.name,
              onChanged: (value) => searchImage(
                entityList: widget.apodEntityList,
                search: value,
              ),
            ),
          ),
          ListView.builder(
            reverse: true,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredList?.length ?? 0,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ImageApodWidget(
                type: WidgetType.mainInfo,
                url: filteredList?[index].url ?? '',
                title: filteredList?[index].title ?? '',
                date: filteredList?[index].date ?? '',
                description: filteredList?[index].description ?? '',
                onTap: () => Modular.to.pushNamed(
                  AppRoutes.detailsPage,
                  arguments: {
                    'entity': filteredList?[index],
                  },
                ),
              ),
            ),
          ),
        ],
      );

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

    setState(() {
      filteredList = filter;
    });
  }
}
