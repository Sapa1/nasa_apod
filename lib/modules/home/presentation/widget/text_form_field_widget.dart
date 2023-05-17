import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nasa_apod/core/styles/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool? autofocus;
  final FocusNode? focusNode;
  final Color? cursorColor;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  const TextFormFieldWidget({
    required this.controller,
    this.focusNode,
    this.cursorColor,
    this.autofocus,
    this.keyboardType,
    this.hintText,
    this.onChanged,
    this.inputFormatters,
    super.key,
  });

  InputBorder get enabledBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          color: AppColors.gray,
          style: BorderStyle.solid,
        ),
      );

  InputBorder get focusedBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          color: AppColors.gray,
          style: BorderStyle.solid,
        ),
      );

  TextStyle get style => const TextStyle(
        color: Colors.white,
      );

  TextStyle get hintStyle => const TextStyle(
        color: Color.fromARGB(82, 255, 255, 255),
      );

  @override
  Widget build(BuildContext context) => TextFormField(
        autofocus: autofocus ?? false,
        focusNode: focusNode,
        controller: controller,
        cursorColor: cursorColor,
        keyboardType: keyboardType,
        style: style,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          contentPadding: const EdgeInsets.only(left: 10),
          constraints: const BoxConstraints(minHeight: 20),
          isDense: true,
          filled: true,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          suffixIcon: const Icon(Icons.search, color: AppColors.gray),
        ),
      );
}
