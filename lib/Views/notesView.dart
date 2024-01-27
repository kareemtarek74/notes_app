// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/notesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: notesViewBody(),
    );
  }
}
