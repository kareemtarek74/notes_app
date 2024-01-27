// ignore: file_names, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/notesViewBodyAppBar.dart';

import 'customNoteCard.dart';

// ignore: camel_case_types
class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [customAppBar(), customNoteCard()],
      ),
    );
  }
}
