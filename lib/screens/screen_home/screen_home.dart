import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_home/widgets/body.dart';

import '../../constants/app_bar_with_search_and_notification.dart';

// ignore: must_be_immutable
class ScreenHome extends StatelessWidget {
  ScreenHome({super.key, this.userName});
  String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithSearchAndNotification(context),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Body(userName: userName),
          ),
        ),
      ),
    );
  }
}
