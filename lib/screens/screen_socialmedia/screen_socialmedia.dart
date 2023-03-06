import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_socialmedia/widgets/body.dart';

import '../../constants/app_bar_with_back_and_search.dart';

class ScreenSocialMedia extends StatelessWidget {
  const ScreenSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackAndSearch(
        context,
        () {
          Navigator.of(context).pop();
        },
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Body(),
          ),
        ),
      ),
    );
  }
}
