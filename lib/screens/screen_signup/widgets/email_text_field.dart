import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:regexed_validator/regexed_validator.dart';

import '../../../../constants/default_text_field_decoration.dart';
import '../../../../constants/dot_slider.dart';
import '../../../../constants/heading.dart';
import '../../../../widgets/gradiant_button_with_text.dart';
import '../pages/password_text_field.dart';

class EmailTextField extends StatelessWidget {
  EmailTextField({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (() => Navigator.pop(context)),
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    dotSlider(count: 3, currentIndex: currentIndex),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Heading('Hi there,'),
                const SizedBox(height: defaultPadding),
                const Text('Please enter your email addess'),
                const SizedBox(height: defaultPadding - 5),
                TextFormField(
                  decoration: defaultTextFieldDecoration('you@example.com'),
                  validator: (value) {
                    if (value == null || !validator.email(value)) {
                      return 'Please enter a valid email';
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
                              PasswordTextField(currentIndex: currentIndex),
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
                      image: AssetImage('assets/images/signup_image_1.png'),
                    ),
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
