import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../widgets/app_text.dart';

class TitleTextWithImage extends StatelessWidget {
  const TitleTextWithImage({
    Key? key,
    required this.userName,
  }) : super(
          key: key,
        );
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(title: 'Hello $userName,'),
            const SizedBox(height: defaultPadding * 0.5),
            const AppText(
              title: 'How may i help you \ntoday ?',
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          'assets/images/robot.png',
          height: defaultPadding * 6,
        ),
      ],
    );
  }
}
