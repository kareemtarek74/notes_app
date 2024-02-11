// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/customAppBar.dart';
import 'package:flutter_application_4/cubits/readNotes/read_notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customListView.dart';

// ignore: camel_case_types
class notesViewBody extends StatefulWidget {
  const notesViewBody({super.key});

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

// ignore: camel_case_types
class _notesViewBodyState extends State<notesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
