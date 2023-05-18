import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_apod/core/const/images.dart';

class LoadMoreApodsWidget extends StatelessWidget {
  const LoadMoreApodsWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Lottie.asset(
          AppImages.alienAnimation,
          repeat: true,
          animate: true,
          height: 150,
        ),
      );
}
