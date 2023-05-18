import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/const/images.dart';

class FailLoadPageSection extends StatelessWidget {
  const FailLoadPageSection({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Lottie.asset(
          AppImages.notFound,
          repeat: true,
          animate: true,
        ),
      );
}
