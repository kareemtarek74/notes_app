// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/customAppBar.dart';

import 'customListView.dart';

// ignore: camel_case_types
class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          customAppBar(appBarTitle: 'NOTES', appBarIcon: Icons.search),
          Expanded(child: notesListView())
        ],
      ),
    );
  }
}
