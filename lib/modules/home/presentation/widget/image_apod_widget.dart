import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa_apod/core/styles/text_styles.dart';

import '../../../../utils/strings_utils.dart';

//TODO: refatorar widget

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
                image(context),
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
                          style: AppTextStyles.oldStandardTT16bold
                              .copyWith(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        date,
                        style: AppTextStyles.oldStandardTT13w400
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
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.oldStandardTT16bold
                    .copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: GestureDetector(
            onTap: onTap,
            child: image(context),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(date),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget image(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.5,
          child: CachedNetworkImage(
            imageUrl: url,
            useOldImageOnUrlChange: true,
            cacheKey: StringUtils.getImageNameFromUrl(url),
            placeholder: (_, __) => const Text('carregadndo'),
            errorWidget: (context, error, stackTrace) => const SizedBox(),
            fit: BoxFit.cover,
          ),
        ),
      );
  // Widget image(BuildContext context) => ClipRRect(
  //       child: SizedBox(
  //         width: MediaQuery.of(context).size.width,
  //         child: CachedNetworkImage(
  //           imageUrl: url,
  //           useOldImageOnUrlChange: true,
  //           cacheKey: StringUtils.getImageNameFromUrl(url),
  //           placeholder: (_, __) => const Text('carregadndo'),
  //           errorWidget: (context, error, stackTrace) => const SizedBox(),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     );
}
