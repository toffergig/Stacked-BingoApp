import 'package:flutter/material.dart';
import 'package:bingo_app/themes/elevated_button_theme.dart';

class DialogBtn extends StatelessWidget {
  final String textbtn;
  final Function()? onTap;

  const DialogBtn({Key? key, required this.textbtn, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonTheme(
      data: TElevatedButtonTheme.lightElevatedButtonTheme, // Always use light theme
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          textbtn,
        ),
      ),
    );
  }
}
