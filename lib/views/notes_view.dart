import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  static const String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery
                            .of(context)
                            .viewInsets
                            .bottom
                    ),
                    child: const AddNoteBottomSheet(),
                  );
                }
            );
          },
          shape: const CircleBorder(),
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add, color: Colors.black,),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}

