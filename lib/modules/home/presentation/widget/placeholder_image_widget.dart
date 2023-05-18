import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/const/images.dart';

class PlaceholderImageWidget extends StatelessWidget {
  const PlaceholderImageWidget({super.key});

  @override
  Widget build(BuildContext context) => Lottie.asset(
        AppImages.loadingAnimation,
        repeat: true,
        animate: true,
      );
}
