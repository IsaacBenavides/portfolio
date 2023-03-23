import 'package:flutter/material.dart';
import 'package:ios_portfolio/utils/main.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final ThemeData themeData = Theme.of(context);
    return GlassWidget(
      width: responsive.wp(80),
      height: responsive.hp(30),
      radius: 10,
      glassColor: themeData.colorScheme.background,
      child: const SizedBox.shrink(),
    );
  }
}
