part of 'show_notes_cubit.dart';

@immutable
abstract class ShowNotesState {}

class ShowNotesInitial extends ShowNotesState {}

class ShowNotesLoading extends ShowNotesState{}

class ShowNotesSuccess extends ShowNotesState{
  final List<NoteModel> notes;

  ShowNotesSuccess(this.notes);
}

class ShowNotesFailure extends ShowNotesState{
  final String errorMessage;
  ShowNotesFailure(this.errorMessage);
}
