import 'package:flutter/material.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'body_apps.dart';
import 'news_container.dart';

class MobileBodyContain extends StatelessWidget {
  const MobileBodyContain({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(7.5)),
        child: Column(
          children: const [
            NewsContainer(),
            SizedBox(height: 20),
            BodyApps(),
          ],
        ),
      ),
    );
  }
}
