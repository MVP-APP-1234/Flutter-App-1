import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:regexed_validator/regexed_validator.dart';

import '../../../../constants/default_text_field_decoration.dart';
import '../../../../constants/dot_slider.dart';
import '../../../../constants/heading.dart';
import '../../../../widgets/gradiant_button_with_text.dart';
import 'username_text_field.dart';

class PasswordTextField extends StatelessWidget {
  PasswordTextField({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      dotSlider(count: 3, currentIndex: currentIndex),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Heading('Now secure it with password'),
                  const SizedBox(height: defaultPadding),
                  const Text('Please enter a password'),
                  const SizedBox(height: defaultPadding - 5),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        defaultTextFieldDecoration('Minimum 8 characters'),
                    validator: (value) {
                      if (value == null || !validator.password(value)) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: defaultPadding),
                  GradiantButtonWithText(
                    title: 'Next',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        currentIndex++;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UsernameTextField(currentIndex: currentIndex),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Container(
                    margin: const EdgeInsets.only(
                      left: defaultPadding * 2,
                      top: defaultPadding,
                      right: defaultPadding,
                      bottom: defaultPadding,
                    ),
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/signup_image_2.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
