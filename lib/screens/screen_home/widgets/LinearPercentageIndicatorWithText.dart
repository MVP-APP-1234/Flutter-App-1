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
          width: 300,
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
