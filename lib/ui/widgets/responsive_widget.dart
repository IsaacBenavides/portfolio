import 'package:flutter/material.dart';
import 'package:ios_portfolio/utils/main.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, this.desktop, this.tablet, this.mobile});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    if (responsive.isDesktop && desktop != null) {
      return desktop!;
    }

    if (responsive.isTablet && tablet != null) {
      return tablet!;
    }

    return mobile!;
  }
}
