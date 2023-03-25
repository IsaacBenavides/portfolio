import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextWithBorder extends StatelessWidget {
  const CustomTextWithBorder({
    super.key,
    required this.text,
    this.borderColor,
    this.color,
    this.fontSize,
    this.alignment,
  });

  final String text;
  final Color? borderColor;
  final Color? color;
  final double? fontSize;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: alignment ?? Alignment.centerLeft,
          child: FittedBox(
            child: CustomText(
              text: text,
              fontSize: fontSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = borderColor ?? Colors.black,
            ),
          ),
        ),
        Align(
          alignment: alignment ?? Alignment.centerLeft,
          child: FittedBox(
            child: CustomText(
              text: text,
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
