import 'package:flutter/material.dart';

class BuildChip extends StatelessWidget {
  const BuildChip({
    Key? key,
    required this.text,
    this.onPressed,
    required this.bgColor,
    required this.color,
    required this.length,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final String text;
  final Color bgColor;
  final Color color;
  final int length;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Chip(
              shape: StadiumBorder(
                side: BorderSide(
                  color: bgColor,
                  width: 1,
                ),
              ),
              labelPadding: const EdgeInsets.symmetric(horizontal: 5),
              label: Text(
                text,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              backgroundColor: Colors.grey.withOpacity(0.23),
              elevation: 0,
              shadowColor: Colors.grey[60],
              padding: const EdgeInsets.all(8.0),
            ),
            Positioned(
              top: 3,
              right: 7,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
