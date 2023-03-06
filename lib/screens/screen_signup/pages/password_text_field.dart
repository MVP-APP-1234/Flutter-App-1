import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:regexed_validator/regexed_validator.dart';

import '../../../../constants/default_text_field_decoration.dart';
import '../../../../constants/dot_slider.dart';
import '../../../../constants/heading.dart';
import '../../../../widgets/gradiant_button_with_text.dart';
import 'username_text_field.dart';

// ignore: must_be_immutable
class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  TextEditingController passwordController = TextEditingController();
  int currentIndex = 1;
  bool isSelected = true;
  void toggleView() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

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
                    obscureText: isSelected,
                    controller: passwordController,
                    decoration: defaultTextFieldDecoration(
                      'Minimum 8 characters',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          toggleView();
                        },
                        child: Image.asset('assets/icons/obscure_icon.png'),
                      ),
                    ),
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
                        FocusManager.instance.primaryFocus!.unfocus();
                        currentIndex++;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UsernameTextField(),
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
