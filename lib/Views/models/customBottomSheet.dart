// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import 'customBotton.dart';
import 'customTextField.dart';

class customModalBottomSheet extends StatelessWidget {
  const customModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            customTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            customTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 66,
            ),
            customButton(),
          ],
        ),
      ),
    );
  }
}
