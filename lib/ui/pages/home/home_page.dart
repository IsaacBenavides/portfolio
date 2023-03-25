import 'package:flutter/material.dart';
import 'package:ios_portfolio/controllers/home_controller.dart';
import 'package:ios_portfolio/ui/pages/home/desktop/main.dart';
import 'package:ios_portfolio/ui/pages/home/mobile/main.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      body: SafeArea(
        child: Column(
          children: [
            _StatusBar(),
            const SizedBox(height: 20),
            const Expanded(
              child: ResponsiveWidget(
                mobile: MobileContain(),
                desktop: DesktopContain(),
              ),
            ),
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
      homeController.getCurrentTime();
      homeController.getCurrentDate();
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
      child: const ResponsiveWidget(
        mobile: MobileStatusBar(),
      ),
    );
  }
}
