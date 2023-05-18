import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa_apod/core/const/images.dart';
import 'package:nasa_apod/core/styles/colors.dart';
import 'package:nasa_apod/core/styles/text_styles.dart';
import 'package:nasa_apod/modules/home/presentation/widget/placeholder_image.dart';

import '../../../../core/const/strings.dart';
import '../../../../utils/strings_utils.dart';

enum WidgetType { mainInfo, allInfo }

class ImageApodWidget extends StatelessWidget {
  final WidgetType type;
  final String url;
  final String title;
  final String date;
  final String description;
  final VoidCallback? onTap;

  const ImageApodWidget({
    required this.type,
    required this.url,
    required this.title,
    required this.date,
    required this.description,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (type == WidgetType.mainInfo) {
      return mainInfo(context);
    } else {
      return allInfo(context);
    }
  }

  Widget mainInfo(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageMainPage(context),
                const SizedBox(width: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          title,
                          style: AppTextStyles.blinker16bold
                              .copyWith(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        date,
                        style: AppTextStyles.blinker13w400
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget allInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageDetailedPage(context),
        Text(
          date,
          style: AppTextStyles.blinker13w400.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(top: 12, left: 10),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            border: Border.all(
              color: AppColors.gray,
            ),
          ),
          child: Text(
            AppStrings.description,
            style: AppTextStyles.blinker16bold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            border: Border.all(
              color: AppColors.gray,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(
            description,
            style: AppTextStyles.blinkerTT16normal.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget imageMainPage(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.width * 0.5,
        child: CachedNetworkImage(
          imageUrl: url,
          useOldImageOnUrlChange: true,
          cacheKey: StringUtils.getImageNameFromUrl(url),
          placeholder: (_, __) => const PlaceholderImage(),
          errorWidget: (context, error, stackTrace) => Image.asset(
            AppImages.imageNotFound,
          ),
          fit: BoxFit.cover,
        ),
      );

  Widget imageDetailedPage(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CachedNetworkImage(
          imageUrl: url,
          useOldImageOnUrlChange: true,
          cacheKey: StringUtils.getImageNameFromUrl(url),
          placeholder: (_, __) => const PlaceholderImage(),
          errorWidget: (context, error, stackTrace) => Image.asset(
            AppImages.imageNotFound,
          ),
          fit: BoxFit.cover,
        ),
      );
}
