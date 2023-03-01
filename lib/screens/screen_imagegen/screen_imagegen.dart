import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_search_and_notification.dart';
import 'package:flutter_application_1/screens/screen_imagegen/widgets/body.dart';

class ScreenImageGen extends StatelessWidget {
  const ScreenImageGen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWithSearchAndNotification(context),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Body(),
        ),
      ),
    );
  }
}
