import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_home/screen_home.dart';
import 'package:provider/provider.dart';
import 'package:regexed_validator/regexed_validator.dart';

import '../../../../constants/default_text_field_decoration.dart';
import '../../../services/auth_provider.dart';
import '../../../widgets/gradiant_button_with_text.dart';

class TextFieldWithButton extends StatefulWidget {
  const TextFieldWithButton({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFieldWithButton> createState() => _TextFieldWithButtonState();
}

class _TextFieldWithButtonState extends State<TextFieldWithButton> {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signIn(AuthProvider provider) async {
    final result =
        await provider.signIn(emailController.text, passwordController.text);
    if (result == '') {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => ScreenHome(
                  userName: FirebaseAuth.instance.currentUser!.displayName)),
          (route) => false);
    }
    // ignore: avoid_print
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final authProvider = context.watch<AuthProvider>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('E-mail Address :'),
          const SizedBox(height: defaultPadding - 5),
          TextFormField(
            controller: emailController,
            decoration: defaultTextFieldDecoration('Enter your e-mail address'),
            validator: (value) {
              if (value == null || !validator.email(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: defaultPadding),
          const Text('Password :'),
          const SizedBox(height: defaultPadding - 5),
          TextFormField(
            obscureText: true,
            controller: passwordController,
            decoration: defaultTextFieldDecoration('Enter your password'),
            validator: (value) {
              if (value == null || !validator.password(value)) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forget Password ?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding * 1.3),
          GradiantButtonWithText(
            title: 'Log In',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                signIn(authProvider);
              }
            },
          )
        ],
      ),
    );
  }
}
