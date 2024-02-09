// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/notesViewBody.dart';
import 'package:flutter_application_4/cubits/readNotes/read_notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/customBottomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const customModalBottomSheet();
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))));
          },
          child: const Icon(Icons.add),
        ),
        body: const notesViewBody(),
      ),
    );
  }
}
