import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // انا ببساطه عامل دي حوالين بوزيشيند
      // وبخليها تتحرك بالنسبة للكونتينير الكبيرة اللي فوق
      // بس طبعا مافيش لها اي لون, بس مخلي الكونتينير اللي تحت
      // نفس ارتفاع البيرينت بتاع الاتنين ناقص نص ارتفاع دي علشان
      // احط دي في النص بالظبط
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 54,
      // width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.3)
                // color: Colors.red
                )
          ]),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                // print(value);
              },
              decoration: InputDecoration(
                  // SuffixIcon مش شغالة تمام هنا
                  // suffixIcon: SvgPicture.asset(
                  //   "assets/icons/search.svg",
                  //   width: 1,
                  //   height: 1,
                  // ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset("assets/icons/search.svg")
        ],
      ),
    );
  }
}
