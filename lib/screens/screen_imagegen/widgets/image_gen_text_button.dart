import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/gradiant_button_with_text.dart';

class ImageGenTextButton extends StatelessWidget {
  const ImageGenTextButton({
    Key? key,
    this.onPressed,
    required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            color: Colors.grey.withOpacity(0.23),
            blurRadius: 3,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 2),
      width: size.width,
      height: 120,
      child: GradiantButtonWithText(
        title: 'Generate Image',
        onPressed: onPressed,
      ),
    );
  }
}
