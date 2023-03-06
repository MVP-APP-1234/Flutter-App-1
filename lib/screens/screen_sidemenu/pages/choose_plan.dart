import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/widgets/side_menu_app_bar.dart';
import 'package:flutter_application_1/widgets/gradiant_button_with_text.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/annual_plan.dart';
import '../widgets/monthly_plan.dart';
import 'Payment.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: sideMenuAppBar(context, 'Choose Your Plan'),
      body: size.width < 300
          ? SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                      state == false ? const MonthlyPlan() : const AnnualPlan(),
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
                              reverseDuration:
                                  const Duration(milliseconds: 500),
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
            )
          : SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                      state == false ? const MonthlyPlan() : const AnnualPlan(),
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
                              reverseDuration:
                                  const Duration(milliseconds: 500),
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
