import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_home/screen_home.dart';

import '../../../../widgets/gradiant_button_with_text.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.2),
                Image.asset('assets/images/signup_email_2.png'),
                const SizedBox(height: defaultPadding),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Hi'),
                      TextSpan(
                          text: ' username,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue)),
                      TextSpan(text: ' Your email has been verified'),
                      TextSpan(text: 'successfully in our system'),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding * 5),
                GradiantButtonWithText(
                    title: 'Explore Now',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ScreenHome(userName: 'Username')),
                          (route) => false);
                    }),
                const SizedBox(
                  height: defaultPadding - 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
