import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plant_model.dart';

class RecommendedItemWidget extends StatelessWidget {
  const RecommendedItemWidget({
    super.key,
    required this.size,
    // required this.image,
    // required this.title,
    // required this.country,
    // required this.price,
    required this.tap,
    required this.plantObject,
  });

  final Size size;
  // final String image, title, country;
  // final int price;

  final Plant plantObject;
  final Function() tap;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize;
    if (width <= 480 && width > 412) {
      fontSize = 16;
    } else if (width <= 412 && width > 360) {
      fontSize = 14;
    } else {
      fontSize = 12;
    }
    return GestureDetector(
        onTap: tap,
        child: Container(
          margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2),
          width: size.width * 0.4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(plantObject.imgPath),
              Container(
                  // width: size.width * 0.4,
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.15))
                  ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // height: 22,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                plantObject.plantOwner.toUpperCase(),
                                style: TextStyle(
                                    fontSize: fontSize,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Text("${plantObject.plantPrice}",
                                style: TextStyle(
                                    fontSize: fontSize - 2,
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
                            fontSize: fontSize - 2,
                            color: kPrimaryColor.withOpacity(0.8)),
                      )
                    ],
                  ))
            ],
          ),
        ));
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     // هااااااام هنحتاج نراجع علي الكلام ده
    //     Expanded(
    //       child: Row(
    //         children: [
    //           Flexible(
    //             child: RichText(
    //               text: TextSpan(children: [
    //                 TextSpan(
    //                     text: "${title.toUpperCase()}\n",
    //                     style: TextStyle(
    //                         overflow: TextOverflow.ellipsis,
    //                         fontSize: fontSize,
    //                         color: Colors.black)),
    //                 TextSpan(
    //                     text: "${country.toUpperCase()}",
    //                     style: TextStyle(
    //                         overflow: TextOverflow.ellipsis,
    //                         fontSize: fontSize - 2,
    //                         color: kPrimaryColor.withOpacity(0.8))),
    //               ]),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Text("\$${price}",
    //         maxLines: 1,
    //         style: TextStyle(
    //             overflow: TextOverflow.ellipsis,
    //             fontSize: fontSize - 2,
    //             color: kPrimaryColor.withOpacity(0.8)
    //
    // )),
    //   ],
    // ),
  }
}
