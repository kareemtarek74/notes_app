import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  List<noteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<noteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
