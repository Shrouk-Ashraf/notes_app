import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());

  showAllNotes(){
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(ShowNotesSuccess(notes));
    }catch(e){
      emit(ShowNotesFailure(e.toString()));
    }
  }
}
