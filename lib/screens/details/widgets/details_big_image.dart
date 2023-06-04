import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DetailsBigImage extends StatelessWidget {
  const DetailsBigImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.7,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.25))
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(65), bottomLeft: Radius.circular(65)),
          image: const DecorationImage(
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img.png"))),
      // image: AssetImage("assets/images/image_2.png"))),
    );
  }
}
