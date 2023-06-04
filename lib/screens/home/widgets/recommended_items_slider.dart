import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/home/widgets/recommended_item_widget.dart';

class RecommendedItemsSlider extends StatelessWidget {
  const RecommendedItemsSlider({
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
          RecommendedItemWidget(
            size: size,
            plantObject: plantData[0],
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(
                  plantObject: plantData[0],
                );
              }));
            },
          ),
          RecommendedItemWidget(
            size: size,
            plantObject: plantData[1],
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(
                  plantObject: plantData[1],
                );
              }));
            },
          ),
          RecommendedItemWidget(
            size: size,
            plantObject: plantData[2],
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(
                  plantObject: plantData[2],
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}
