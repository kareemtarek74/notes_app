// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../constants.dart';

class customTextField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const customTextField(
      // ignore: non_constant_identifier_names
      {super.key,
      this.hintText,
      this.maxLines = 1,
      // ignore: non_constant_identifier_names
      this.OnSaved,
      this.onChanged});

  final String? hintText;
  final int maxLines;
  // ignore: non_constant_identifier_names
  final void Function(String?)? OnSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        onSaved: OnSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'This field is required';
          } else {
            return null;
          }
        },
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
