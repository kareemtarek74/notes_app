import 'package:flutter/material.dart';

// ignore: camel_case_types
class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.08),
          borderRadius: BorderRadius.circular(12)),
      child: const Icon(Icons.search),
    );
  }
}
