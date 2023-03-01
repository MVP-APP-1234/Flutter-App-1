import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Text Heading(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
