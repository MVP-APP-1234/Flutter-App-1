import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../widgets/gradiant_button_with_text.dart';
import 'explore.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/signup_email_1.png'),
                const SizedBox(height: defaultPadding),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text:
                              'A Verification e-mail has been sent to your e-mail\n'),
                      TextSpan(text: 'address'),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding * 5),
                GradiantButtonWithText(
                    title: 'Check Your E-mail',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Explore(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: defaultPadding - 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Haven\'t received the verification ?',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resent E-mail',
                          style: TextStyle(color: Colors.lightBlue.shade300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
