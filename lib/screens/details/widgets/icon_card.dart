import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.size,
    required this.iconPath,
  });

  final Size size;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    double width = 0, height = 0;
    if (size.width <= 480 && size.width > 412) {
      width = 60;
      height = 60;
    } else if (size.width <= 412 && size.width > 360) {
      width = 55;
      height = 55;
    } else {
      width = 50;
      height = 50;
    }
    return Align(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 25,
                  color: kPrimaryColor.withOpacity(0.2)),
              const BoxShadow(
                  offset: Offset(-15, -15), blurRadius: 25, color: Colors.white)
            ]),
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}
