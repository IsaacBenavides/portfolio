import 'package:flutter/material.dart';
import 'package:ios_portfolio/utils/main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
    this.child,
    this.start = 1.0,
    this.end = 1.0,
    this.colors = const [Colors.transparent, Colors.transparent],
    this.radius,
    this.maxWidth,
    this.width,
    this.height,
    this.padding,
    this.appName,
    this.margin,
    this.onTap,
  });

  final Widget? child;
  final double start;
  final double end;
  final List<Color> colors;
  final double? radius;
  final double? maxWidth;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final String? appName;
  final EdgeInsets? margin;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height ?? 0 + (appName != null ? responsive.hp(2) : 0.0),
        child: Column(
          children: [
            Container(
              width: width,
              height: height,
              margin: margin,
              padding: padding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 10),
                gradient: LinearGradient(
                  colors:
                      List.generate(colors.length, (index) => colors[index]),
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
