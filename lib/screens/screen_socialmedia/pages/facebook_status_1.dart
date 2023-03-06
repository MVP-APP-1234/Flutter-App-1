// ignore_for_file: must_be_immutable, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_back_and_title.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/default_text_field_decoration.dart';
import '../../../../widgets/gradiant_button_with_text.dart';
import '../../../modals/api_generated_data/api_generated_data.dart';
import 'facebook_status_2.dart';

Future<ApiGeneratedData> callApi(String sender, String recipent,
    String keyPoints, String language, String tone) async {
  const url = 'http://15.185.47.213:8080/generate-text-landing';
  final dio = Dio();
  Response response = await dio.post(
    url,
    data: {
      "useCase": "EmailLandingPage",
      "tone": tone,
      "language": language,
      "inputs": [
        {
          "keyPoints": keyPoints,
          "sender": sender,
          "recipient": recipent,
        }
      ]
    },
  );
  ApiGeneratedData apiGeneratedData = ApiGeneratedData.fromJson(response.data);
  return apiGeneratedData;
}

class FaceBookStatus1 extends StatefulWidget {
  const FaceBookStatus1({super.key});

  @override
  State<FaceBookStatus1> createState() => _FaceBookStatus1State();
}

class _FaceBookStatus1State extends State<FaceBookStatus1> {
  TextEditingController senderController = TextEditingController(),
      recipentController = TextEditingController(),
      keyPointsController = TextEditingController();
  ApiGeneratedData apiGeneratedData = ApiGeneratedData();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    senderController.dispose();
    recipentController.dispose();
    keyPointsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List languages = ['English', 'Arabic'];
    List selectTone = ['Formal', 'Informal'];
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
                      'From:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    TextFormField(
                      controller: senderController,
                      decoration: defaultTextFieldDecoration(
                        'Sender Name',
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'To:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    TextFormField(
                      controller: recipentController,
                      decoration: defaultTextFieldDecoration('Recipent Name'),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      'KeyPoints:',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: defaultPadding - 10),
                    TextFormField(
                      controller: keyPointsController,
                      decoration: defaultTextFieldDecoration('Key Points'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a value';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: defaultPadding),
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
                    _isLoading == true
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.lightBlue,
                            ),
                          )
                        : GradiantButtonWithText(
                            title: 'Generate',
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                _isLoading = true;
                                setState(() {});
                                apiGeneratedData = await callApi(
                                  senderController.text.trim(),
                                  recipentController.text.trim(),
                                  keyPointsController.text.trim(),
                                  language,
                                  tone,
                                );
                                // ignore: use_build_context_synchronously
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FaceBookStatus2(
                                        text: apiGeneratedData.text ??
                                            'Error: Couldn\'t find data'),
                                  ),
                                );
                              }
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
