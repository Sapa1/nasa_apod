import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_apod/core/const/images.dart';
import 'package:nasa_apod/core/styles/text_styles.dart';

class LoadingApodSection extends StatefulWidget {
  const LoadingApodSection({super.key});

  @override
  State<LoadingApodSection> createState() => _LoadingApodSectionState();
}

class _LoadingApodSectionState extends State<LoadingApodSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<String> _textAnimation;
  late final TweenSequence<String> tweenSequence;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    tweenSequence = TweenSequence<String>(
      [
        TweenSequenceItem<String>(
          tween: ConstantTween<String>('Loading'),
          weight: 1,
        ),
        TweenSequenceItem<String>(
          tween: ConstantTween<String>('Loading.'),
          weight: 1,
        ),
        TweenSequenceItem<String>(
          tween: ConstantTween<String>('Loading..'),
          weight: 1,
        ),
        TweenSequenceItem<String>(
          tween: ConstantTween<String>('Loading...'),
          weight: 1,
        ),
      ],
    );

    _textAnimation = _animationController.drive(tweenSequence);

    _animationController.repeat(period: const Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppImages.moonAnimation,
              repeat: true,
              animate: true,
              height: 200,
              width: 200,
            ),
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Text(
                  _textAnimation.value,
                  style: AppTextStyles.oldStandardTT14w700.copyWith(
                    color: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      );
}
