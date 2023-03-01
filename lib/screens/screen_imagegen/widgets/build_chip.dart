import 'package:flutter/material.dart';

class BuildChip extends StatelessWidget {
  const BuildChip({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 12,
        ),
      ),
      backgroundColor: Colors.grey.withOpacity(0.23),
      elevation: 0,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
    );
  }
}
