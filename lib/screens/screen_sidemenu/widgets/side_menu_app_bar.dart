import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

AppBar sideMenuAppBar(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Padding(
      padding: const EdgeInsets.only(left: defaultPadding - 10, top: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: defaultPadding - 10, top: 10),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
    ],
  );
}
