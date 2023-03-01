import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_home/screen_home.dart';
import 'package:provider/provider.dart';

import '../services/auth_provider.dart';

class SocialIconWithButton extends StatelessWidget {
  const SocialIconWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();
    void googleSignIn(AuthProvider provider) async {
      await provider.googleSignIn();
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: ((context) => ScreenHome(
                userName: FirebaseAuth.instance.currentUser!.displayName)),
          ),
          (route) => false);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/facebook.png',
            height: 45,
          ),
        ),
        GestureDetector(
          onTap: () {
            googleSignIn(authProvider);
          },
          child: Image.asset(
            'assets/icons/google.png',
            height: 45,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/apple 1.png',
            height: 45,
          ),
        ),
      ],
    );
  }
}
