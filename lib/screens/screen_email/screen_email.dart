import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_back_and_search.dart';
import 'package:flutter_application_1/screens/screen_email/widgets/body.dart';

import '../../constants/constants.dart';

class ScreenEmail extends StatelessWidget {
  const ScreenEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackAndSearch(
        context,
        () {
          Navigator.of(context).pop();
        },
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Body(),
          ),
        ),
      ),
    );
  }
}
