import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(noteModel note) {}
}
