import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constants/constants.dart';

class LinearPercentageIndicatorWithText extends StatelessWidget {
  const LinearPercentageIndicatorWithText({
    Key? key,
    required this.text,
    required this.startValue,
    required this.endValue,
    required this.percentage,
    required this.percentageValue,
  }) : super(key: key);
  final String text;
  final int startValue, endValue, percentage;
  final double percentageValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            const Spacer(),
            Text(
              '$percentage %',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding - 10),
        LinearPercentIndicator(
          barRadius: const Radius.circular(20),
          width: () {
            if (size.width < 800 && size.width > 700) {
              return size.width * 0.9;
            } else if (size.width < 800 && size.width > 700) {
              return size.width * 0.89;
            } else if (size.width < 750 && size.width > 500) {
              return size.width * 0.85;
            } else if (size.width < 500 && size.width > 400) {
              return size.width * 0.8;
            } else if (size.width < 400 && size.width > 370) {
              return size.width * 0.78;
            } else if (size.width < 370 && size.width > 300) {
              return size.width * 0.75;
            } else if (size.width < 300) {
              return size.width * 0.7;
            } else {
              return 0.0;
            }
          }(),
          lineHeight: 15.0,
          percent: percentageValue / 100,
          animation: true,
          animationDuration: 1500,
          backgroundColor: Colors.white30,
          progressColor: Colors.blue.shade700,
        ),
        const SizedBox(height: defaultPadding - 10),
        Row(
          children: [
            Text(
              '$startValue',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              '$endValue',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
