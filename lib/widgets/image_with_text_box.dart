import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'app_text.dart';

class ImageWithTextBox extends StatelessWidget {
  const ImageWithTextBox({
    Key? key,
    required this.title,
    required this.image,
    this.onPressed,
    this.textAlign = TextAlign.start,
  }) : super(key: key);
  final String title, image;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  // ignore: prefer_typing_uninitialized_variables
  final textAlign;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding - 15),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 5,
              color: Colors.grey.withOpacity(0.23),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              height: 40,
            ),
            AppText(
              title: title,
              textAlign: textAlign,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
