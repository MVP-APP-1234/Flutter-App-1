import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/widgets/side_menu_app_bar.dart';
import 'package:flutter_application_1/widgets/gradiant_button_with_text.dart';

import '../widgets/payment_card.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool state_1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sideMenuAppBar(context, 'Payment'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                const SizedBox(height: defaultPadding * 2),
                PaymentCard(
                  image: 'assets/icons/payment_card_icon_1.png',
                  color: Colors.blueAccent.shade100,
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    const Text('Set as primary payment'),
                    const Spacer(),
                    CupertinoSwitch(
                      value: state_1,
                      onChanged: (value) {
                        state_1 = value;
                        setState(() {});
                      },
                      activeColor: Colors.lightBlue,
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                PaymentCard(
                  image: 'assets/icons/payment_card_icon_2.png',
                  color: Colors.lightBlueAccent.shade100,
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    const Text('Set as primary payment'),
                    const Spacer(),
                    CupertinoSwitch(
                      value: !state_1,
                      onChanged: (value) {
                        state_1 = !value;
                        setState(() {});
                      },
                      activeColor: Colors.lightBlue,
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                GradiantButtonWithText(title: 'Done', onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have a problem?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact us',
                        style: TextStyle(
                          color: Colors.lightBlue.shade300,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
