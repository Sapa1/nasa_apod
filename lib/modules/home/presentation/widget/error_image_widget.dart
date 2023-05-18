import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/const/images.dart';

class ErrorImageWidget extends StatelessWidget {
  const ErrorImageWidget({super.key});

  @override
  Widget build(BuildContext context) => Lottie.asset(
        AppImages.notFound,
        repeat: true,
        animate: true,
      );
}
