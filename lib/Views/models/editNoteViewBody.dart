// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/models/customAppBar.dart';
import 'package:flutter_application_4/Views/models/customTextField.dart';
import 'package:flutter_application_4/cubits/readNotes/read_notes_cubit.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class editNoteViewBody extends StatefulWidget {
  const editNoteViewBody({super.key, required this.note});
  final noteModel note;

  @override
  State<editNoteViewBody> createState() => _editNoteViewBodyState();
}

// ignore: camel_case_types
class _editNoteViewBodyState extends State<editNoteViewBody> {
  // ignore: non_constant_identifier_names
  String? Title, Content;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            customAppBar(
              onPressed: () {
                if (Title != null) {
                  widget.note.title = Title!;
                }
                if (Content != null) {
                  widget.note.subTitle = Content!;
                }
                widget.note.save();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              appBarTitle: 'Edit Note',
              appBarIcon: Icons.check,
            ),
            const SizedBox(
              height: 40,
            ),
            customTextField(
              onChanged: (value) {
                Title = value;
              },
              hintText: 'Edit Title',
            ),
            const SizedBox(
              height: 16,
            ),
            customTextField(
              onChanged: (value) {
                Content = value;
              },
              hintText: 'Edit Content',
              maxLines: 5,
            )
          ],
        ));
  }
}
