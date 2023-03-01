import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class IconContainerWithTitle extends StatelessWidget {
  const IconContainerWithTitle({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final String icon;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent.shade200,
                    Colors.lightBlue,
                    Colors.lightBlue,
                    Colors.blue,
                    //add more colors
                  ],
                ),
                borderRadius: BorderRadius.circular(defaultPadding - 5),
              ),
              child: Image.asset(
                icon,
                height: 40,
              )),
        ),
        const SizedBox(height: defaultPadding),
        Text(title),
      ],
    );
  }
}
