import 'package:flutter/material.dart';

import 'constants.dart';

AppBar appBarWithBackArrowAndTitle(
    {context, text, icon = '', onPressed, onDownloadAction}) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: defaultPadding, top: defaultPadding),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          icon.isNotEmpty ? Image.asset(icon) : Container(),
          icon.isNotEmpty ? const SizedBox(width: defaultPadding) : Container(),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
    actions: [
      onDownloadAction == null
          ? Container()
          : IconButton(
              onPressed: onDownloadAction,
              icon: const Icon(Icons.download_rounded))
    ],
  );
}
