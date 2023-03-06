import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(5),
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
              height: () {
                if (size.width < 300) {
                  return 20.0;
                } else if (size.width > 300 && size.width < 500) {
                  return 40.0;
                } else if (size.width > 500) {
                  return 80.0;
                } else {
                  return 80.0;
                }
              }(),
              // size.width > 500 ? 80 : 40,
              width: () {
                if (size.width < 300) {
                  return 20.0;
                } else if (size.width > 300 && size.width < 500) {
                  return 40.0;
                } else if (size.width > 500) {
                  return 80.0;
                } else {
                  return 80.0;
                }
              }(),
            ),
            AppText(
              title: title,
              textAlign: textAlign,
              size: () {
                if (size.width < 300) {
                  return 9.0;
                } else if (size.width > 300 && size.width < 500) {
                  return 10.0;
                } else if (size.width > 500) {
                  return 16.0;
                } else {
                  return 16.0;
                }
              }(),
            ),
          ],
        ),
      ),
    );
  }
}
