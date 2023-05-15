import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/strings_utils.dart';

//TODO: refatorar widget
class ImageApodWidget extends StatelessWidget {
  final String url;
  final String title;
  final String date;
  final String description;
  final VoidCallback? onTap;

  const ImageApodWidget({
    required this.url,
    required this.title,
    required this.date,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title),
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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
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
}
