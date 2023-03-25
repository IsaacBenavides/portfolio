import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/app.dart';
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
      radius: 20,
      width: responsive.wp(85),
      height: responsive.hp(12),
      glassColor: themeData.colorScheme.background,
      child: LayoutBuilder(
        builder: (_, constraints) {
          final double height = constraints.maxHeight;
          final double width = constraints.maxWidth;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppWidget(
                height: height * .7,
                margin: EdgeInsets.symmetric(horizontal: width * .02),
                child: Image.asset(
                  "assets/images/phone.png",
                  fit: BoxFit.cover,
                ),
                onTap: () => Utils.launchInBrowser("tel://+573045647252"),
              ),
              AppWidget(
                height: height * .7,
                margin: EdgeInsets.symmetric(horizontal: width * .02),
                child: Image.asset(
                  "assets/images/mail.png",
                  fit: BoxFit.cover,
                ),
                onTap: () => Utils.launchInBrowser("mailto:isaacxzx@gmail.com"),
              ),
              AppWidget(
                height: height * .7,
                margin: EdgeInsets.symmetric(horizontal: width * .02),
                child: Image.asset(
                  "assets/images/contacts.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
