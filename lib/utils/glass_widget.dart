import 'dart:ui';
import 'package:flutter/material.dart';

class GlassWidget extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final Color? glassColor;
  final Color? borderColor;
  final double? radius;
  final double? maxWidth;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const GlassWidget({
    Key? key,
    required this.child,
    this.start = 0.1,
    this.end = 0.1,
    this.glassColor,
    this.borderColor,
    this.radius,
    this.maxWidth,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          constraints: BoxConstraints(maxWidth: maxWidth ?? 750),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 0.0),
            gradient: LinearGradient(
              colors: [
                (glassColor ?? Colors.white).withOpacity(start),
                (glassColor ?? Colors.white).withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            border: Border.all(
              width: 1.5,
              color: (borderColor ?? Colors.white).withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
