import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../constants/heading.dart';
import '../../../../widgets/social_icon_with_button.dart';
import 'text_field_with_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const SizedBox(height: defaultPadding),
                Image.asset(
                  'assets/icons/logo_icon.png',
                  height: 50,
                ),
                const SizedBox(height: defaultPadding),
                Heading('Let\'s sign you in'),
                const SizedBox(height: defaultPadding - 5),
                Text(
                  'Welcome back, you have been missed !',
                  textAlign:
                      size.width < 300 ? TextAlign.center : TextAlign.left,
                ),
                const SizedBox(height: defaultPadding * 2.5),
                const TextFieldWithButton(),
                const SizedBox(height: defaultPadding),
                const Text('- OR -'),
                const SizedBox(height: defaultPadding + 15),
                const SocialIconWithButton(),
                const SizedBox(height: defaultPadding + 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.lightBlue.shade300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
