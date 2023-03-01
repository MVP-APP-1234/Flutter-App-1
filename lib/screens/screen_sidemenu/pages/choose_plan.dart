import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/widgets/side_menu_app_bar.dart';
import 'package:flutter_application_1/widgets/gradiant_button_with_text.dart';
import 'package:page_transition/page_transition.dart';

import 'Payment.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  String _radioBtnVal = 'Trial';
  bool state = false;
  _handleChange(String? value) {
    setState(() {
      _radioBtnVal = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sideMenuAppBar(context, 'Choose Your Plan'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Monthly'),
                    const SizedBox(height: 10),
                    CupertinoSwitch(
                      value: state,
                      onChanged: (value) {
                        state = value;
                        setState(() {});
                      },
                      activeColor: Colors.lightBlue,
                    ),
                    const SizedBox(height: 10),
                    const Text('Annual'),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // =============== Trial =================
                    GestureDetector(
                      onTap: () {
                        _handleChange('Trial');
                      },
                      child: Container(
                        height: 240,
                        width: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.lightBlue.shade300,
                              Colors.indigo.shade200,
                              Colors.pink.shade300,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.23),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Radio<String>(
                                activeColor: Colors.purple,
                                value: 'Trial',
                                groupValue: _radioBtnVal,
                                onChanged: _handleChange),
                            const Text(
                              'Trial',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/sidebar_plan_icon_1.png',
                              height: 80,
                            ),
                            const Text(
                              'Free',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: defaultPadding - 10),
                            const Text(
                              '2,500 words',
                              style: TextStyle(
                                fontSize: 11,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '20 images',
                              style: TextStyle(
                                fontSize: 11,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // =============== Basic =================
                    GestureDetector(
                      onTap: () {
                        _handleChange('Basic');
                      },
                      child: Container(
                        height: 240,
                        width: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.lightBlue.shade100,
                              Colors.lightBlue.shade200,
                              Colors.lightBlue.shade400,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.23),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Radio<String>(
                                activeColor: Colors.purple,
                                value: 'Basic',
                                groupValue: _radioBtnVal,
                                onChanged: _handleChange),
                            const Text(
                              'Basic',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/icons/sidebar_plan_icon_2_1.png',
                                    height: 60,
                                  ),
                                  Positioned(
                                    left: 20,
                                    right: 20,
                                    child: Image.asset(
                                      'assets/icons/sidebar_plan_icon_2_2.png',
                                      height: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding - 10),
                            const Text(
                              '\$ 9.99',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              'Monthly',
                              style: TextStyle(
                                fontSize: 10,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: defaultPadding - 10),
                            const Text(
                              '45,000 words',
                              style: TextStyle(
                                fontSize: 11,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '100 images',
                              style: TextStyle(
                                fontSize: 11,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // =============== Pro =================
                const SizedBox(height: defaultPadding),
                GestureDetector(
                  onTap: () {
                    _handleChange('Pro');
                  },
                  child: Container(
                    height: 240,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.lightBlue.shade300,
                          Colors.indigo.shade300,
                          Colors.purple.shade300,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.23),
                          blurRadius: 5,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Radio<String>(
                            activeColor: Colors.purple,
                            value: 'Pro',
                            groupValue: _radioBtnVal,
                            onChanged: _handleChange),
                        const Text(
                          'Pro',
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/icons/sidebar_plan_icon_3_1.png',
                                height: 60,
                              ),
                              Positioned(
                                left: 20,
                                right: 20,
                                child: Image.asset(
                                  'assets/icons/sidebar_plan_icon_3_2.png',
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: defaultPadding - 10),
                        const Text(
                          '\$ 29.99',
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Monthly',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: defaultPadding - 10),
                        const Text(
                          '150,000 words',
                          style: TextStyle(
                            fontSize: 11,
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '200 images',
                          style: TextStyle(
                            fontSize: 11,
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                GradiantButtonWithText(
                  title: 'Try it NOW',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const Payment(),
                        duration: const Duration(milliseconds: 500),
                        reverseDuration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Need More?',
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
