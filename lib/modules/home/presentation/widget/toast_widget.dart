import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

abstract class ToastWidget {
  static Future toast({
    required BuildContext context,
    required String title,
    required String message,
    Duration? duration,
  }) =>
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        icon: const Padding(
          padding: EdgeInsets.only(top: 60, bottom: 37),
          child: Icon(Icons.error_outline_rounded),
        ),
        padding: const EdgeInsets.only(top: 60, bottom: 37, left: 40),
        backgroundColor: Colors.red,
        titleText: Text(title),
        titleColor: AppColors.black,
        messageText: Text(message),
        messageColor: AppColors.black,
        duration: duration ?? const Duration(seconds: 3),
        flushbarStyle: FlushbarStyle.GROUNDED,
      ).show(context);
}
