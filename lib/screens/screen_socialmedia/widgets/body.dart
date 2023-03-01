import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../../widgets/app_text.dart';
import '../../../../widgets/image_with_text_box.dart';
import '../pages/facebook_status_1.dart';

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
                  title: 'Facebook \nStatus',
                  image: 'assets/icons/social_icon_1.png',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FaceBookStatus1(),
                      ),
                    );
                  },
                ),
                ImageWithTextBox(
                  title: 'Instagram \nCaption',
                  image: 'assets/icons/social_icon_2.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'LinkedIn \nPost',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/social_icon_3.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Social Media \nProfile Bio',
                  image: 'assets/icons/social_icon_4.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Tiktok Video \nIdea',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/social_icon_5.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Tweet',
                  textAlign: TextAlign.center,
                  image: 'assets/icons/social_icon_6.png',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
