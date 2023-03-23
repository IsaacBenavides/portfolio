import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';

class DesktopContain extends StatelessWidget {
  const DesktopContain({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: CustomText(text: "aqui va el contenido de desktop"),
    );
  }
}
