import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    getDataForFuture(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.lightBlue,
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                ),
                const SizedBox(height: 20),
                GradientText(
                  'ARABY AI',
                  style: const TextStyle(
                    fontSize: 30.0,
                  ),
                  colors: [
                    Colors.lightBlueAccent.shade200,
                    Colors.lightBlue,
                    Colors.blue.shade900,
                    //add mroe colors here.
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> getDataForFuture(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 3));
  // ignore: use_build_context_synchronously
  Navigator.pushReplacementNamed(context, '/onboarding');
}
