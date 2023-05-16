import 'package:flutter/material.dart';
import 'package:nasa_apod/modules/home/domain/entities/apod_entity.dart';

import '../widget/image_apod_widget.dart';

class DetailPage extends StatelessWidget {
  final ApodEntity entity;
  const DetailPage({
    required this.entity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ImageApodWidget(
              type: WidgetType.allInfo,
              url: entity.url,
              title: entity.title,
              date: entity.date,
              description: entity.description,
            ),
          ],
        ),
      ),
    );
  }
}
