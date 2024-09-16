import 'package:flutter/material.dart';
import 'package:template/common/utils/extension/exception_ext.dart';

class Utils {
  Utils._();

  static void showSnackBar(BuildContext context, String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );

  static void printWrapped(String? text) {
    RegExp('.{1,800}')
        .allMatches(text ?? '')
        .forEach((match) => debugPrint(match.group(0)));
  }

  static DateTime? parseToDateTime(String dateInString, [String? format]) {
    try {
      return DateTime.parse(dateInString);
    } on Exception catch (e) {
      debugPrint(e.getMessage);
      return null;
    }
  }

  static bool isToday(DateTime? dateTime) {
    if (dateTime == null) {
      return false;
    }

    final today = DateTime.now();

    if (dateTime.year != today.year) {
      return false;
    }

    if (dateTime.month != today.month) {
      return false;
    }

    if (dateTime.day != today.day) {
      return false;
    }

    return true;
  }

  static String maskBankAccountNumber(String input) {
    if (input.length <= 4) {
      return input;
    }

    String maskedString = '';

    for (int i = 0; i < input.length - 4; i++) {
      maskedString += '*';
    }

    maskedString += input.substring(input.length - 4);

    return maskedString;
  }
}
