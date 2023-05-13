import 'package:flutter/material.dart';

//TODO: refatorar widget
class ImageApodWidget extends StatelessWidget {
  final String url;
  final String title;
  final String date;
  final String description;

  const ImageApodWidget({
    required this.url,
    required this.title,
    required this.date,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title),
            ],
          ),
        ),
        const SizedBox(height: 5),
        // aqui eu vou ter que tratar caso eu pegue pelo localStorage
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Image.network(
            url,
            fit: BoxFit.cover,
            // height: MediaQuery.of(context).size.width * 0.7,
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(date),
            ],
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
