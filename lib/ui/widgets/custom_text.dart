import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_portfolio/utils/main.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.isUnderline = false,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.textOverflow,
    this.foreground,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool isUnderline;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final Paint? foreground;

  @override
  Widget build(BuildContext context) {
    final Responsive r = Responsive.of(context);
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.quicksand(
        letterSpacing: letterSpacing,
        color: color,
        fontSize: fontSize ?? r.dp(2),
        fontWeight: fontWeight,
        decoration: isUnderline ? TextDecoration.underline : null,
        foreground: foreground,
      ),
    );
  }
}
