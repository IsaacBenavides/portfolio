import 'package:flutter/material.dart';

import 'body_contain.dart';
import 'static_icons_container.dart';

class MobileContain extends StatelessWidget {
  const MobileContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        MobileBodyContain(),
        StaticIconsContainer(),
        SizedBox(height: 15)
      ],
    );
  }
}
