import 'package:flutter/material.dart';

class GradiantButtonWithText extends StatelessWidget {
  const GradiantButtonWithText({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: onPressed == null
                  ? [
                      Colors.grey.withOpacity(0.23),
                      Colors.grey.withOpacity(0.23),
                      Colors.grey.withOpacity(0.23),
                      Colors.grey.withOpacity(0.23),
                      //add more colors
                    ]
                  : [
                      Colors.lightBlueAccent.shade200,
                      Colors.lightBlue,
                      Colors.lightBlue,
                      Colors.blue.shade900,
                      //add more colors
                    ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width.toDouble(), 10),
              elevation: 0,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              disabledBackgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              shadowColor: Colors.transparent,
              //make color or elevated button transparent
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(
                color: onPressed == null
                    ? Colors.grey.withOpacity(0.5)
                    : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
