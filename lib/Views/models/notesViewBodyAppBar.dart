// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'customSearchIcon.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: const Color(0xff303030),
        title: const Text(
          'NOTES',
          style: TextStyle(fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 4),
            child: customSearchIcon(),
          )
        ],
      ),
    );
  }
}
