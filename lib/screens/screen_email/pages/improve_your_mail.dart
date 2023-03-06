import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/constants/default_text_field_decoration.dart';
import 'package:flutter_application_1/widgets/gradiant_button_with_text.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../../../constants/app_bar_with_back_and_title.dart';

class ImproveYourMail extends StatelessWidget {
  const ImproveYourMail({super.key});

  @override
  Widget build(BuildContext context) {
    List languages = ['English', 'Spanish', 'French', 'German', 'Italian'];
    List soundTone = ['English', 'Spanish', 'French', 'German', 'Italian'];
    String languageDropDownValue = languages.first;
    String toneDropDownValue = soundTone.first;
    final formKey = GlobalKey();
    String text = lorem(paragraphs: 1, words: 60);

    return Scaffold(
      appBar: appBarWithBackArrowAndTitle(
        context: context,
        text: 'Improve Your E-mail',
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
                    SizedBox(
                      height: 63,
                      child: DropdownButtonFormField(
                        value: languageDropDownValue,
                        elevation: 0,
                        items: languages.map(
                          (value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (newValue) {
                          languageDropDownValue = newValue.toString();
                        },
                        decoration: defaultTextFieldDecoration('English'),
                        icon: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'Enter the E-mail body that you would like to improve:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    SizedBox(
                      height: 125,
                      child: TextFormField(
                        decoration: defaultTextFieldDecoration(text),
                        minLines: 5,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'From:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        decoration: defaultTextFieldDecoration(
                          'Sender Name',
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'To:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        decoration: defaultTextFieldDecoration('Recipent Name'),
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'How do you want the caption to sound ?',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    SizedBox(
                      height: 63,
                      child: DropdownButtonFormField(
                        value: toneDropDownValue,
                        elevation: 0,
                        items: soundTone.map(
                          (value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (newValue) {
                          toneDropDownValue = newValue.toString();
                        },
                        decoration: defaultTextFieldDecoration(''),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        hint: const Text(
                          "Select Item Type",
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 4),
                    GradiantButtonWithText(
                        title: 'Generate',
                        onPressed: () {
                          FocusManager.instance.primaryFocus!.unfocus();
                        }),
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
