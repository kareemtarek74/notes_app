// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/editNoteView.dart';
import 'package:flutter_application_4/cubits/readNotes/read_notes_cubit.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class customNoteCard extends StatelessWidget {
  const customNoteCard({super.key, required this.note});
  final noteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const editNoteView();
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 12),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              note.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                note.subTitle,
                style: TextStyle(
                    color: Colors.black.withOpacity(.3), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                note.delete();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
              },
              icon: const Icon(Icons.delete),
              color: Colors.black,
              iconSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8),
            child: Text(
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(.3), fontSize: 16),
            ),
          )
        ]),
      ),
    );
  }
}
