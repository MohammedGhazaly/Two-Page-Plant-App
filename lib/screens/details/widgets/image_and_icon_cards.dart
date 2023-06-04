import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/widgets/details_big_image.dart';
import 'package:plant_app/screens/details/widgets/icons_list.dart';

class ImageAndIconCards extends StatelessWidget {
  const ImageAndIconCards({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
            child: Column(
              children: [
                Align(
                  // alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                ),
                // const Spacer(
                //   flex: 1,
                // ),
                Expanded(
                  child: IconsList(size: size),
                )
              ],
            ),
          )),
          DetailsBigImage(size: size)
        ],
      ),
    );
  }
}
