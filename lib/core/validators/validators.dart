import 'package:flutter/widgets.dart';

class Validators {
  Validators._();

  static FormFieldValidator required(String message) => (value) {
        if (value?.isEmpty ?? true) return message;
        return null;
      };

  static FormFieldValidator<String> min(int min, String message) => (value) {
        if (value?.isEmpty ?? true) return null;
        if ((value?.trim().length ?? 0) < min) return message;
        return null;
      };

  static FormFieldValidator<String> max(int max, String message,
          {bool canBeEmpty = false}) =>
      (value) {
        if (value?.isEmpty ?? true) {
          return canBeEmpty ? null : 'Campo obrigatório';
        }
        if ((value?.trim().length ?? 0) > max) return message;
        return null;
      };
}
