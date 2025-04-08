import 'package:chat_front/extensions/screen_size.dart';
import 'package:flutter/material.dart';

import '../constants/text_style.dart';
import '../constants/widget_style.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: screenButtonStyle,
        child: Text(text, style: mainBtnTextStyle),
      ),
    );
  }
}
