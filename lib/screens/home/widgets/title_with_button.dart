import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/widgets/custom_text_button.dart';
import 'package:plant_app/screens/home/widgets/text_with_custom_under_line.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    super.key,
    required this.textWithCustomUnderLineText,
    required this.customButtonText,
    required this.onPressed,
  });
  final String textWithCustomUnderLineText;
  final String customButtonText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TextWithCustomUnderLine(
            text: textWithCustomUnderLineText,
          ),
          const Spacer(
            flex: 1,
          ),
          CustomTextButton(
            buttonText: customButtonText,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
