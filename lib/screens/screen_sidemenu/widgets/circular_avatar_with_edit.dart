import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/app_text.dart';

class CircularAvatarWithEdit extends StatelessWidget {
  const CircularAvatarWithEdit({
    Key? key,
    required this.image,
    required this.name,
    required this.phoneNumber,
    this.onPressed,
  }) : super(key: key);
  final String? name;
  final String image, phoneNumber;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: defaultPadding - 10),
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigoAccent.shade700,
                  Colors.pinkAccent.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(image),
            ),
          ),
          const SizedBox(height: defaultPadding - 10),
          AppText(
            title: name,
            fontWeight: FontWeight.bold,
            size: 18,
          ),
          const SizedBox(height: defaultPadding - 10),
          Text(phoneNumber),
          const SizedBox(height: defaultPadding - 10),
          TextButton.icon(
            style: TextButton.styleFrom(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              side: const BorderSide(
                width: 1,
                color: Colors.grey,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            onPressed: onPressed,
            icon: Image.asset('assets/icons/person_icon.png'),
            label: const Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: defaultPadding - 10),
        ],
      ),
    );
  }
}
