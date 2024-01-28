// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: 'Title ',
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
