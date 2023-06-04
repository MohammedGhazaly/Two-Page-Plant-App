import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/widgets/custom_text_field.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      child: Stack(
        children: [
          Container(
            // لاحظ دي نص ارتفاع الكونتينر اللي تحت علشان اعمل سينتر
            // للكونتينر علي السيف بالظبط
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(children: [
              Text(
                "Hi Uishopy!",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 1,
              ),
              Image.asset("assets/images/logo.png")
            ]),
          ),
          const Positioned(
              bottom: 0,
              // مش هتظهر الا ام تحط الاتنين دول الليفت والرايت
              left: 0,
              right: 0,
              child: CustomTextField())
        ],
      ),
    );
  }
}
