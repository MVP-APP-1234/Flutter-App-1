import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_search_and_notification.dart';
import 'package:flutter_application_1/screens/screen_email/widgets/body.dart';

import '../../constants/constants.dart';

class ScreenEmail extends StatelessWidget {
  const ScreenEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithSearchAndNotification(context),
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
