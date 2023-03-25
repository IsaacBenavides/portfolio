import 'package:flutter/material.dart';
import 'package:ios_portfolio/controllers/main.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'package:provider/provider.dart';

class MobileStatusBar extends StatelessWidget {
  const MobileStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = context.watch();
    final Responsive responsive = Responsive.of(context);
    double timeSize = responsive.dp(1.8);
    return Container(
      height: responsive.hp(4),
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: CustomTextWithBorder(
              text: homeController.currentTime,
              fontSize: timeSize,
            ),
          ),
          Image.asset(
            "assets/images/wifi.png",
            width: responsive.dp(2.5),
            color: Colors.white,
          ),
          Image.asset(
            "assets/images/battery-filled.png",
            width: responsive.dp(2.5),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
