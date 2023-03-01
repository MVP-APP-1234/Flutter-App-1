// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../widgets/app_text.dart';
import '../../../../widgets/image_with_text_box.dart';
import 'title_text_with_image.dart';
import 'trail_plan_container.dart';

class Body extends StatelessWidget {
  Body({super.key, this.userName});
  String? userName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 1.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding - 10),
          TitleTextWithImage(userName: userName),
          const SizedBox(height: defaultPadding),
          const AppText(
            title:
                'Choose the type of content you would like to create \nfor now:',
            size: 13,
          ),
          const SizedBox(height: defaultPadding + 5),
          SizedBox(
            width: size.width,
            height: size.height * 0.5,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: defaultPadding + 5,
              mainAxisSpacing: defaultPadding + 5,
              children: [
                ImageWithTextBox(
                  title: 'Image',
                  image: 'assets/icons/home_image_icon.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/image');
                  },
                ),
                ImageWithTextBox(
                  title: 'Sozial Media',
                  image: 'assets/icons/home_social_icon.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/social');
                  },
                ),
                ImageWithTextBox(
                  title: 'E-mails',
                  image: 'assets/icons/home_email_icon.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/email');
                  },
                ),
                ImageWithTextBox(
                  title: 'Ads',
                  image: 'assets/icons/home_ads_icon.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Messages',
                  image: 'assets/icons/home_messege_icon.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'SEO',
                  image: 'assets/icons/home_seo_icon.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'E-commerce',
                  image: 'assets/icons/home_ecommerce_icon.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Long Documents',
                  image: 'assets/icons/home_documents_icon.png',
                  onPressed: () {},
                ),
                ImageWithTextBox(
                  title: 'Others',
                  image: 'assets/icons/home_others_icon.png',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          const TrialPlanContainer(),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
