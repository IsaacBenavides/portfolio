import 'package:flutter/material.dart';
import 'package:ios_portfolio/controllers/main.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'package:provider/provider.dart';

class BodyApps extends StatelessWidget {
  const BodyApps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double height = responsive.hp(11);
    final HomeController homeController = context.watch();
    return SizedBox(
      width: responsive.wp(100),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.spaceBetween,
        runSpacing: 6,
        spacing: 3,
        children: [
          AppWidget(
            width: height * .75,
            height: height * .75,
            appName: "Github",
            child: Image.asset(
              "assets/images/github.png",
              fit: BoxFit.cover,
            ),
            onTap: () => Utils.launchInBrowser(IsaacUrls.github),
          ),
          AppWidget(
            width: height * .75,
            height: height * .75,
            appName: "LinkedIn",
            child: Image.asset(
              "assets/images/linkedin.png",
              fit: BoxFit.cover,
            ),
            onTap: () => Utils.launchInBrowser(IsaacUrls.linkedin),
          ),
          AppWidget(
            width: height * .75,
            height: height * .75,
            appName: "Resume",
            child: Image.asset(
              "assets/images/pdf.png",
              fit: BoxFit.cover,
            ),
            onTap: () => homeController.downloadCV(),
          ),
          AppWidget(
            width: height * .75,
            height: height * .75,
            appName: "Calendario",
            colors: const [Colors.white],
            child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: homeController.currentWeekDay,
                      color: Colors.red,
                      fontSize: constraints.maxHeight * .30,
                    ),
                    CustomText(
                      text: homeController.currentDay,
                      color: Colors.black,
                      fontSize: constraints.maxHeight * .45,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
