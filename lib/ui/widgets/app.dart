import 'package:flutter/material.dart';
import 'custom_text_with_border.dart';
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

    List<Color> currentColors =
        colors.length == 1 ? [...colors, ...colors] : colors;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height! + (appName != null ? responsive.hp(5) : 0.0),
        width: width,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxHeight = constraints.maxHeight;
            final maxWidth = constraints.maxWidth;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  width: width,
                  height: height,
                  margin: margin,
                  padding: padding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius ?? 10),
                    gradient: LinearGradient(
                      colors: List.generate(
                        currentColors.length,
                        (index) => currentColors[index],
                      ),
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                    ),
                  ),
                  child: child,
                ),
                if (appName != null) ...[
                  const SizedBox(height: 3),
                  SizedBox(
                    height: responsive.hp(5) - 3,
                    width: maxWidth,
                    child: CustomTextWithBorder(
                      alignment: Alignment.center,
                      text: appName!,
                      fontSize: maxHeight * .12,
                    ),
                  )
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}
