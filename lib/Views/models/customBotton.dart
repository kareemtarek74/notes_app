// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: camel_case_types
class customButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const customButton({super.key, this.Ontap});
  // ignore: non_constant_identifier_names
  final void Function()? Ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
