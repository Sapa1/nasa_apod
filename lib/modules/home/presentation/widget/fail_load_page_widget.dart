import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/const/images.dart';

class FailLoadPageWidget extends StatelessWidget {
  const FailLoadPageWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Lottie.asset(
          AppImages.notFound,
          repeat: true,
          animate: true,
        ),
      );
}
