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
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(title: 'Hello $userName,'),
            const SizedBox(height: defaultPadding * 0.5),
            AppText(
              title: 'How may i help you \ntoday ?',
              size: size.width < 300 ? 12 : 20,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          'assets/images/robot.png',
          height: size.width < 300 ? defaultPadding * 3 : defaultPadding * 6,
        ),
      ],
    );
  }
}
