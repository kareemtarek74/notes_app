part of 'read_notes_cubit.dart';

@immutable
abstract class ReadNotesState {}

class ReadNotesInitial extends ReadNotesState {}

class ReadNotesLoading extends ReadNotesState {}

class ReadNotesSuccess extends ReadNotesState {
  final List<noteModel> readNotes;

  ReadNotesSuccess(this.readNotes);
}

class ReadNotesFailure extends ReadNotesState {
  final String errMessage;

  ReadNotesFailure(this.errMessage);
}
