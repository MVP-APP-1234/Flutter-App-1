import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

PreferredSize appBarWithBackAndSearch(BuildContext context, onPressed) {
  Size size = MediaQuery.of(context).size;
  return PreferredSize(
    preferredSize: const Size(double.infinity, 70),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: defaultPadding),
      child: AppBar(
        leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Container(
          margin: size.width > 500
              ? const EdgeInsets.symmetric(horizontal: 60)
              : const EdgeInsets.symmetric(horizontal: 0),
          height: 40,
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
