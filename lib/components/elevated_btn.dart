import 'package:flutter/material.dart';

class EleBtn extends StatelessWidget {
  final String textbtn;
  const EleBtn({super.key, required this.textbtn, required this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        textbtn,
      ),
    );
  }
}
