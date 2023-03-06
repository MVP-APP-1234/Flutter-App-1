import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_imagegen/widgets/body.dart';

import '../../constants/app_bar_with_back_and_search.dart';

class ScreenImageGen extends StatelessWidget {
  const ScreenImageGen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWithBackAndSearch(
        context,
        () {
          Navigator.of(context).pop();
        },
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Body(),
        ),
      ),
    );
  }
}
