import 'package:flutter/material.dart';

InputDecoration customDateFieldPicker() {
  return InputDecoration(
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    hintText: 'DD/MM/YYYY',
    hintStyle: TextStyle(
      color: Colors.grey.withOpacity(0.5),
    ),
    suffixIcon: Image.asset('assets/icons/calendar_icon.png'),
  );
}
