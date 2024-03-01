import 'package:bingo_app/themes/elevated_button_theme.dart';
import 'package:bingo_app/themes/text_theme.dart';
import 'package:bingo_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: kcBlue,
      scaffoldBackgroundColor: kcPrimaryColor,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: kcBlue,
      scaffoldBackgroundColor: kcDarkGreyColor,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme);
}
