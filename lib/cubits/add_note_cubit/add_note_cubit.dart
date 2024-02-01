import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/constants.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(noteModel note) async {
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
