import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/const/images.dart';

class PlaceholderImage extends StatelessWidget {
  const PlaceholderImage({super.key});

  @override
  Widget build(BuildContext context) => Lottie.asset(
        AppImages.loadingAnimation,
        repeat: true,
        animate: true,
      );
}
