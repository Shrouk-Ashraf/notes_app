import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return BlocBuilder<ShowNotesCubit, ShowNotesState>(
      builder: (context, state) {
        // BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
        List<NoteModel> notes = BlocProvider.of<ShowNotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return CustomNoteItem(note: notes[index],);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8,);
              },
              itemCount: notes.length
          ),
        );
      },
    );
  }
}

