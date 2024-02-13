// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/editNoteViewBody.dart';

import '../models/noteModel.dart';

// ignore: camel_case_types
class editNoteView extends StatelessWidget {
  const editNoteView({super.key, required this.note});
  final noteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewBody(note: note),
    );
  }
}
