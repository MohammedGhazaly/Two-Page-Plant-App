import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/widgets/icon_card.dart';

class IconsList extends StatelessWidget {
  const IconsList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      children: [
        IconCard(
          size: size,
          iconPath: "assets/icons/sun.svg",
        ),
        IconCard(
          size: size,
          iconPath: "assets/icons/icon_2.svg",
        ),
        IconCard(
          size: size,
          iconPath: "assets/icons/icon_3.svg",
        ),
        IconCard(
          size: size,
          iconPath: "assets/icons/icon_4.svg",
        ),
        IconCard(
          size: size,
          iconPath: "assets/icons/icon_4.svg",
        ),
      ],
    );
  }
}
