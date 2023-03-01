import 'package:flutter/material.dart';

import 'email_text_field.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return EmailTextField(currentIndex: currentIndex);
  }
}
