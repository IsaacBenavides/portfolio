import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/routes/names.dart';
import 'package:ios_portfolio/utils/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        RoutesNames.home,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Responsive responsive = Responsive.of(context);
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: Center(
          child: Image.asset(
            "assets/images/brand-apple.png",
            width: responsive.dp(4),
            color: theme.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
