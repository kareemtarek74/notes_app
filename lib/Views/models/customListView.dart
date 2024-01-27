// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'customNoteCard.dart';

// ignore: camel_case_types
class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: customNoteCard(),
        );
      },
    );
  }
}
