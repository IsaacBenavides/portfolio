import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/app.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'news_container.dart';

class MobileBodyContain extends StatelessWidget {
  const MobileBodyContain({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double height = responsive.hp(11);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(7.5)),
        child: Column(
          children: [
            const NewsContainer(),
            const SizedBox(height: 20),
            SizedBox(
              width: responsive.wp(100),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 6,
                spacing: 3,
                children: [
                  AppWidget(
                    width: height * .7,
                    height: height * .7,
                    child: Image.asset(
                      "assets/images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  AppWidget(
                    width: height * .7,
                    height: height * .7,
                    child: Image.asset(
                      "assets/images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  AppWidget(
                    width: height * .7,
                    height: height * .7,
                    child: Image.asset(
                      "assets/images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  AppWidget(
                    width: height * .7,
                    height: height * .7,
                    child: Image.asset(
                      "assets/images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  AppWidget(
                    width: height * .7,
                    height: height * .7,
                    child: Image.asset(
                      "assets/images/github.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
