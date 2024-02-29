import 'package:bingo_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  //Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: kcPrimaryColor,
    backgroundColor: kcBlue,
    disabledBackgroundColor: kcLightGrey,
    disabledForegroundColor: kcLightGrey,
    side: const BorderSide(color: kcBlue),
    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: kcPrimaryColor, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ));
  //Dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: kcPrimaryColor,
    backgroundColor: kcBlue,
    disabledBackgroundColor: kcLightGrey,
    disabledForegroundColor: kcLightGrey,
    side: const BorderSide(color: kcBlue),
    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: kcPrimaryColor, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
