import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/widgets/featured_items_slider.dart';

import 'package:plant_app/screens/home/widgets/header_widget.dart';
import 'package:plant_app/screens/home/widgets/recommended_items_slider.dart';
import 'package:plant_app/screens/home/widgets/title_with_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // علشان اجيب ارتفاع او عرض الاسكرين
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(size: size),
          TitleWithButton(
            customButtonText: "More",
            textWithCustomUnderLineText: "Recommended",
            onPressed: () {},
          ),
          RecommendedItemsSlider(size: size),
          TitleWithButton(
            customButtonText: "More",
            textWithCustomUnderLineText: "Featured Plants",
            onPressed: () {},
          ),
          FeaturedItemsSlider(size: size),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
