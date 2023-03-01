import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/widgets/app_text.dart';
import 'package:flutter_application_1/widgets/image_with_text_box.dart';

import '../pages/improve_your_mail.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding + 10),
          const AppText(
            title: 'What do you want to create ?',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: defaultPadding + 10),
          Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: defaultPadding + 5,
              mainAxisSpacing: defaultPadding + 5,
              children: [
                ImageWithTextBox(
                  title: 'E-mail',
                  image: 'assets/icons/email_icon_1.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Cold Email',
                  image: 'assets/icons/email_icon_2.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Email \nSubject',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/email_icon_3.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'E-mail Milstone',
                  image: 'assets/icons/email_icon_4.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Promotonal \nE-mail',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/email_icon_5.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Improve Your \nE-mail',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/email_icon_6.png',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImproveYourMail(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
