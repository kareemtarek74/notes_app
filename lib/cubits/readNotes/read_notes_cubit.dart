import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  fetchAllNotes() async {
    emit(ReadNotesLoading());
    try {
      var notesBox = Hive.box<noteModel>(kNotesBox);
      // ignore: non_constant_identifier_names
      List<noteModel> Notes = notesBox.values.toList();
      emit(ReadNotesSuccess(Notes));
    } catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
