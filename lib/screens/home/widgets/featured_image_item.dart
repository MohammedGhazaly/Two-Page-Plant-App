import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedImageItem extends StatelessWidget {
  const FeaturedImageItem({
    super.key,
    required this.size,
    required this.imgPath,
    required this.onTapFunction,
  });

  final Size size;
  final String imgPath;
  final Function() onTapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(imgPath))),
      ),
    );
  }
}
