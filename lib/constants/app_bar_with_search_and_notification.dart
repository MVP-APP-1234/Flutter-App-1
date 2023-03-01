import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/screen_sidemenu.dart';
import 'package:page_transition/page_transition.dart';

import 'constants.dart';

PreferredSize appBarWithSearchAndNotification(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 70),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: defaultPadding),
      child: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: const ScreenSideMenu(),
                duration: const Duration(milliseconds: 500),
                reverseDuration: const Duration(milliseconds: 500),
              ),
            );
          },
          icon: Image.asset(
            'assets/icons/menu.png',
            height: 30,
          ),
        ),
        title: Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Looking for something..',
              hintStyle: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 15,
              ),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/notification.png',
              height: 30,
            ),
          ),
        ],
      ),
    ),
  );
}
