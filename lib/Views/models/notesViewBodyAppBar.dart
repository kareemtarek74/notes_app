// ignore: file_names, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customSearchIcon.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: Color(0xff303030),
      title: const Text('NOTES'),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 8),
          child: customSearchIcon(),
        )
      ],
    );
  }
}
