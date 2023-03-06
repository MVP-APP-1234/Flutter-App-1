import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.title,
    this.size = 14,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
  }) : super(key: key);
  final String? title;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Text(
        title!,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
