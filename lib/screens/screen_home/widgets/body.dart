// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../widgets/app_text.dart';
import '../../../../widgets/image_with_text_box.dart';
import 'title_text_with_image.dart';
import 'trail_plan_container.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.userName});
  String? userName = 'Username';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding - 10),
        TitleTextWithImage(userName: userName),
        const SizedBox(height: defaultPadding),
        AppText(
          title: 'Choose the type of content you would like to create for now:',
          size: size.width < 300 ? 9 : 13,
        ),
        const SizedBox(height: defaultPadding + 5),
        SizedBox(
          width: size.width,
          height: size.width < 500 ? size.height * 0.51 : size.height * 0.75,
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
                title: 'Social Media',
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
        size.width < 400
            ? const SizedBox(height: defaultPadding)
            : const SizedBox(),
        const TrialPlanContainer(),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
