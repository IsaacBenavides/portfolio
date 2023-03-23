import 'package:flutter/material.dart';
import 'package:ios_portfolio/controllers/home_controller.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return BackgroundWidget(
      body: SafeArea(
        child: Column(
          children: [
            _StatusBar(),
            const Expanded(
              child: SizedBox(
                child: Center(
                  child: CustomText(
                    text: "Aqui van los iconos",
                  ),
                ),
              ),
            ),
            if (!responsive.isDesktop) ...[
              _StaticIconsContainer(),
              const SizedBox(height: 10)
            ],
          ],
        ),
      ),
    );
  }
}

class _StatusBar extends StatefulWidget {
  @override
  State<_StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<_StatusBar> {
  late HomeController homeController;
  @override
  void initState() {
    homeController = context.read();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeController.getCurrentDateTime();
    });
    super.initState();
  }

  @override
  void dispose() {
    homeController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SizedBox(
      width: responsive.wp(100),
      child: ResponsiveWidget(
        mobile: _MobileStatusBar(),
      ),
    );
  }
}

class _MobileStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController homeController = context.watch();
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: responsive.hp(4),
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                CustomText(
                  text: homeController.currentTime,
                  fontSize: responsive.dp(2),
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.black,
                ),
                CustomText(
                  text: homeController.currentTime,
                  fontSize: responsive.dp(2),
                  color: Colors.white,
                ),
              ],
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

class _StaticIconsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final ThemeData themeData = Theme.of(context);
    return GlassWidget(
      start: 0.2,
      end: 0.2,
      radius: 10,
      glassColor: themeData.colorScheme.background,
      child: SizedBox(
        width: responsive.wp(90),
        height: responsive.hp(10),
      ),
    );
  }
}
