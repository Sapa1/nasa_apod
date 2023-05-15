import 'package:flutter/material.dart';
import 'package:nasa_apod/modules/home/domain/entities/apod_entity.dart';

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
            Text(entity.title),
          ],
        ),
      ),
    );
  }
}
