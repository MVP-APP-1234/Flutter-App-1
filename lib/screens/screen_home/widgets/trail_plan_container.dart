import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'LinearPercentageIndicatorWithText.dart';

class TrialPlanContainer extends StatelessWidget {
  const TrialPlanContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: () {
        if (size.width < 300) {
          return size.height * 0.64;
        } else if (size.width > 300 && size.width < 380) {
          return size.height * 0.63;
        } else if (size.width > 380 && size.width < 500) {
          return size.height * 0.51;
        } else if (size.width > 500 && size.width < 700) {
          return size.height * 0.64;
        } else if (size.width > 700 && size.width < 800) {
          return size.height * 0.45;
        } else if (size.width > 800 && size.width < 900) {
          return size.height * 0.4;
        } else {
          return size.height * 0.35;
        }
      }(),
      width: size.width,
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
          SizedBox(
            width: size.width,
            child: const LinearPercentageIndicatorWithText(
              text: 'Word count',
              percentageValue: 20,
              percentage: 20,
              startValue: 500,
              endValue: 2500,
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          SizedBox(
            width: size.width,
            child: const LinearPercentageIndicatorWithText(
              text: 'Image count',
              percentageValue: 0,
              percentage: 0,
              startValue: 0,
              endValue: 20,
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          SizedBox(
            height: 40,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: Size(size.width, 10),
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
          ),
        ],
      ),
    );
  }
}
