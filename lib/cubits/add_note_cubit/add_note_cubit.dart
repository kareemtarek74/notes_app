import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xffE3D8F1);
  addNote(noteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<noteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
