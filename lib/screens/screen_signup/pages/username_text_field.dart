import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../constants/default_text_field_decoration.dart';
import '../../../../constants/dot_slider.dart';
import '../../../../constants/heading.dart';
import '../../../../widgets/gradiant_button_with_text.dart';
import 'email_verification.dart';

// ignore: must_be_immutable
class UsernameTextField extends StatefulWidget {
  const UsernameTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<UsernameTextField> createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField> {
  TextEditingController textController = TextEditingController();
  int currentIndex = 2;

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                Heading('Let\'s pick you a username !'),
                const SizedBox(height: defaultPadding),
                TextFormField(
                  controller: textController,
                  decoration: defaultTextFieldDecoration(
                    'Username',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        textController.clear();
                      },
                      child: Image.asset('assets/icons/reset_icon.png'),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                GradiantButtonWithText(
                  title: 'Done',
                  onPressed: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailVerification(),
                      ),
                    );
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
                      image: AssetImage('assets/images/signup_image_3.png'),
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
