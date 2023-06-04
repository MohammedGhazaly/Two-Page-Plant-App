import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plant_model.dart';

class PlantDetailsWidget extends StatelessWidget {
  const PlantDetailsWidget({
    super.key,
    required this.size,
    required this.plantObject,
  });
  final Size size;
  final Plant plantObject;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize;
    if (width <= 480 && width > 412) {
      fontSize = 32;
    } else if (width <= 412 && width > 360) {
      fontSize = 26;
    } else {
      fontSize = 24;
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "${plantObject.plantOwner.toUpperCase()}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Text("\$${plantObject.plantPrice}",
                  style: TextStyle(
                      fontSize: fontSize - 4,
                      color: kPrimaryColor.withOpacity(0.8))),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          plantObject.ownerCountry,
          style: TextStyle(
              fontSize: fontSize - 4, color: kPrimaryColor.withOpacity(0.8)),
        )
      ],
    );
  }
}
