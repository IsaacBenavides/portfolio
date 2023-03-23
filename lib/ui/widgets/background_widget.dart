import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'package:ios_portfolio/utils/main.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ResponsiveWidget(
            desktop: Image.asset(
              ImagesConstants.desktop,
              fit: BoxFit.cover,
            ),
            tablet: Image.asset(
              ImagesConstants.tablet,
              fit: BoxFit.cover,
            ),
            mobile: Image.asset(
              ImagesConstants.mobile,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: responsive.wp(100),
            height: responsive.hp(100),
            child: body,
          )
        ],
      ),
    );
  }
}
