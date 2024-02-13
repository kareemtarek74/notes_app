// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'customSearchIcon.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget {
  const customAppBar(
      {super.key,
      required this.appBarTitle,
      required this.appBarIcon,
      this.onPressed});

  final String appBarTitle;
  final IconData appBarIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: const Color(0xff303030),
        title: Text(
          appBarTitle,
          style: const TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
            child: customSearchIcon(
              onPressed: onPressed,
              icon: appBarIcon,
            ),
          )
        ],
      ),
    );
  }
}
