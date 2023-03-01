import 'package:flutter/material.dart';

Container dotSlider({double width = 10, count, currentIndex}) {
  return Container(
    margin: const EdgeInsets.all(0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => Container(
          margin: const EdgeInsets.only(right: 5),
          height: 10,
          width: currentIndex == index ? width : 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? Colors.blue : Colors.blue.shade100,
          ),
        ),
      ),
    ),
  );
}
