import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/widgets/featured_image_item.dart';

class FeaturedItemsSlider extends StatelessWidget {
  const FeaturedItemsSlider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedImageItem(
            size: size,
            imgPath: "assets/images/bottom_img_1.png",
            onTapFunction: () {},
          ),
          FeaturedImageItem(
            size: size,
            imgPath: "assets/images/bottom_img_2.png",
            onTapFunction: () {},
          ),
        ],
      ),
    );
  }
}
