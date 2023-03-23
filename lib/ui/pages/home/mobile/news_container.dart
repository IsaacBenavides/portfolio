import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final ThemeData themeData = Theme.of(context);
    return GlassWidget(
      start: 0.2,
      end: 0.2,
      height: responsive.hp(30),
      radius: 10,
      glassColor: themeData.colorScheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Center(
        child: CustomText(
          text:
              "Por el momento voy a meter noticias aquí. Esto puede cambiar en el futuro.",
        ),
      ),
    );
  }
}
