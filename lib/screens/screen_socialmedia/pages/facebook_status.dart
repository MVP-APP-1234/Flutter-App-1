// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_back_and_title.dart';
import 'package:flutter_application_1/screens/screen_socialmedia/pages/facebook_result.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/default_text_field_decoration.dart';
import '../../../../widgets/gradiant_button_with_text.dart';

class FaceBookStatus extends StatelessWidget {
  const FaceBookStatus({super.key});

  @override
  Widget build(BuildContext context) {
    List languages = ['English', 'Arabic'];
    List selectTone = [
      'Appreciative',
      'Assertive',
      'Casual',
      'Funny',
      'Joyful',
      'Passionate',
      'Sadness',
      'Worried',
    ];
    String language = languages.first;
    String tone = selectTone.first;
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: appBarWithBackArrowAndTitle(
        context: context,
        text: 'Facebook Status',
        icon: 'assets/icons/app_bar_icon_1.png',
        onPressed: (() => Navigator.pop(context)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: defaultPadding * 2),
                    const Text(
                      'Please select the language:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    DropdownButtonFormField(
                      value: language,
                      elevation: 0,
                      items: languages.map(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (language) {
                        language = languages.toString();
                      },
                      decoration: defaultTextFieldDecoration('English'),
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'What would you like to post about ?',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    TextFormField(
                      decoration: defaultTextFieldDecoration('Type here..'),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'How do you want the caption to sound ?',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    DropdownButtonFormField(
                      value: tone,
                      elevation: 0,
                      items: selectTone.map(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (tone) {
                        tone = selectTone.toString();
                      },
                      decoration:
                          defaultTextFieldDecoration('Select Item Type'),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Text(
                        "Select Item Type",
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 4),
                    GradiantButtonWithText(
                      title: 'Generate',
                      onPressed: () {
                        FocusManager.instance.primaryFocus!.unfocus();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FaceBookResult(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: defaultPadding * 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
