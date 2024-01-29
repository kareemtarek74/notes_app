// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/editNoteViewBody.dart';

// ignore: camel_case_types
class editNoteView extends StatelessWidget {
  const editNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: editNoteViewBody(),
    );
  }
}
