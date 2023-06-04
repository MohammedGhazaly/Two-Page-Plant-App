import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
  final String buttonText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 90,
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
