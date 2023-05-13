import 'package:flutter/cupertino.dart';

class BodyPageScrollWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final bool includeSafeArea;
  final Widget child;

  const BodyPageScrollWidget({
    required this.child,
    this.padding,
    this.includeSafeArea = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) => includeSafeArea
      ? buildWithSafeArea(context)
      : buildWithoutSafeArea(context);

  Widget buildWithoutSafeArea(BuildContext context) => SafeArea(
        child: LayoutBuilder(
          builder: (context, constrains) => SingleChildScrollView(
            padding: padding,
            child: child,
          ),
        ),
      );

  Widget buildWithSafeArea(BuildContext context) => LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          padding: padding,
          child: child,
        ),
      );
}
