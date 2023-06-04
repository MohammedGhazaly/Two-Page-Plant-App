import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class CustomBottomNaviagtionBar extends StatefulWidget {
  const CustomBottomNaviagtionBar({
    super.key,
  });

  @override
  State<CustomBottomNaviagtionBar> createState() =>
      _CustomBottomNaviagtionBarState();
}

class _CustomBottomNaviagtionBarState extends State<CustomBottomNaviagtionBar> {
  int selectedIcon = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100), topRight: Radius.circular(100)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -10),
                blurRadius: 35,
                color: kPrimaryColor.withOpacity(0.25))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIcon = 0;
                });
              },
              icon: SvgPicture.asset(
                  height: 30,
                  width: 30,
                  color: selectedIcon == 0 ? kPrimaryColor : Colors.black54,
                  "assets/icons/flower_icon.svg")),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIcon = 1;
                });
              },
              icon: SvgPicture.asset(
                  height: 25,
                  width: 25,
                  color: selectedIcon == 1 ? kPrimaryColor : Colors.black54,
                  "assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIcon = 2;
                });
              },
              icon: SvgPicture.asset(
                  height: 25,
                  color: selectedIcon == 2 ? kPrimaryColor : Colors.black54,
                  "assets/icons/user-icon.svg"))
        ],
      ),
    );
  }
}
