import 'dart:ui';
import 'package:flutter/material.dart';

class GlassWidget extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final Color? glassColor;
  final Color? borderColor;
  final double? radius;

  const GlassWidget({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
    this.glassColor,
    this.borderColor,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
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
