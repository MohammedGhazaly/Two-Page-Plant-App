import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TextWithCustomUnderLine extends StatelessWidget {
  const TextWithCustomUnderLine({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 24,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 2,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 2),
                height: 7,
                color: kPrimaryColor.withOpacity(0.3),
              ))
        ],
      ),
    );
  }
}
