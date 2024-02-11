// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubits/readNotes/read_notes_cubit.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customNoteCard.dart';

// ignore: camel_case_types
class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<noteModel> notes =
            BlocProvider.of<ReadNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: customNoteCard(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
