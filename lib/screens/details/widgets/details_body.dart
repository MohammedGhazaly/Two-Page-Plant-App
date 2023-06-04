import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/screens/details/widgets/image_and_icon_cards.dart';
import 'package:plant_app/screens/details/widgets/plant_details_widget.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.plantObject});
  final Plant plantObject;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCards(size: size),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: PlantDetailsWidget(
              size: size,
              plantObject: plantObject,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 70,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30)),
                    color: kPrimaryColor),
                child: const Center(
                    child: Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white),
                )),
              )),
              Expanded(
                  child: Container(
                height: 70,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    color: Colors.white),
                child: const Center(
                    child: Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                )),
              )),
            ],
          )
        ],
      ),
    );
  }
}
