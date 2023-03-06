import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../constants/heading.dart';
import '../../../../widgets/social_icon_with_button.dart';
import 'icon_container_with_title.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding * 2),
                Image.asset(
                  'assets/icons/logo_icon.png',
                  height: 50,
                ),
                const SizedBox(height: defaultPadding),
                Heading('Getting started'),
                const SizedBox(height: defaultPadding - 5),
                const Text('Create an account to continue !'),
                const SizedBox(height: defaultPadding * 2.5),
                const Text('- USE -'),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: size.width > 500
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.spaceAround,
                  children: [
                    IconContainerWithTitle(
                      title: 'Phone',
                      icon: 'assets/icons/auth_icon_1.png',
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    ),
                    IconContainerWithTitle(
                      title: 'E-mail',
                      icon: 'assets/icons/auth_icon_2.png',
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 4),
                const Text('- OR -'),
                const SizedBox(height: defaultPadding * 2),
                const SocialIconWithButton(),
                const SizedBox(height: defaultPadding * 4),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 11, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'By Registering you agree to our',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      const TextSpan(
                        text: ' Terms of Use',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      const TextSpan(
                        text: ' Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Text(
                        'Log In',
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
