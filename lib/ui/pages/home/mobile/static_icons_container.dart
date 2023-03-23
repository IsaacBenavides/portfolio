import 'package:flutter/material.dart';
import 'package:ios_portfolio/utils/main.dart';

class StaticIconsContainer extends StatelessWidget {
  const StaticIconsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final ThemeData themeData = Theme.of(context);
    return GlassWidget(
      start: 0.2,
      end: 0.2,
      radius: 10,
      width: responsive.wp(85),
      height: responsive.hp(11),
      glassColor: themeData.colorScheme.background,
      child: LayoutBuilder(
        builder: (_, constraints) {
          final double height = constraints.maxHeight;
          final double width = constraints.maxWidth;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                width: height * .8,
                height: height * .8,
                color: Colors.primaries[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
