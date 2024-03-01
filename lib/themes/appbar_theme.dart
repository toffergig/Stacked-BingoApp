import 'package:bingo_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: kcDarkGreyColor, size: 24),
    actionsIconTheme: IconThemeData(color: kcDarkGreyColor, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: kcDarkGreyColor),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: kcDarkGreyColor, size: 24),
    actionsIconTheme: IconThemeData(color: kcPrimaryColor, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: kcPrimaryColor),
  );
}
