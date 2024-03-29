// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.08),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        icon: Icon(
          icon,
          size: 30,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
