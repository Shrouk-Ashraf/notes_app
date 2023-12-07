part of 'show_notes_cubit.dart';

@immutable
abstract class ShowNotesState {}

class ShowNotesInitial extends ShowNotesState {}

class ShowNotesLoading extends ShowNotesCubit{}

class ShowNotesSuccess extends ShowNotesCubit{
  final List<NoteModel> notes;

  ShowNotesSuccess(this.notes);
}

class ShowNotesFailure extends ShowNotesCubit{
  final String errorMessage;
  ShowNotesFailure(this.errorMessage);
}
