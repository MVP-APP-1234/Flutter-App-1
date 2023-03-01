import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'LinearPercentageIndicatorWithText.dart';

class TrialPlanContainer extends StatelessWidget {
  const TrialPlanContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.lightBlue.shade200,
            Colors.indigo.shade200,
            Colors.indigo.shade200,
            Colors.pink.shade200,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Trial Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/icons/home_rocket_icon.png',
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          const LinearPercentageIndicatorWithText(
            text: 'Word count',
            percentageValue: 20,
            percentage: 20,
            startValue: 500,
            endValue: 2500,
          ),
          const SizedBox(height: defaultPadding * 2),
          const LinearPercentageIndicatorWithText(
            text: 'Image count',
            percentageValue: 0,
            percentage: 0,
            startValue: 0,
            endValue: 20,
          ),
          const SizedBox(height: defaultPadding * 2),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(350, 40),
              backgroundColor: Colors.transparent,
              side: const BorderSide(
                color: Colors.white,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Upgrade NOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
