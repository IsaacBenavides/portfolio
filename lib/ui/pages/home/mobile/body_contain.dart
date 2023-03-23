import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/widgets/main.dart';
import 'news_container.dart';

class MobileBodyContain extends StatelessWidget {
  const MobileBodyContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          NewsContainer(),
          CustomText(text: "Aqui van a ir los iconos")
        ],
      ),
    );
  }
}
