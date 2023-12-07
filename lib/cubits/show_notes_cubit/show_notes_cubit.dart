import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());
}
