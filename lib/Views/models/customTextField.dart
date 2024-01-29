// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key, this.hintText, this.maxLines = 1});

  final String? hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: kPrimaryColor),
            border: customBorder(),
            enabledBorder: customBorder(),
            focusedBorder: customBorder(color: kPrimaryColor)));
  }

  OutlineInputBorder customBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
