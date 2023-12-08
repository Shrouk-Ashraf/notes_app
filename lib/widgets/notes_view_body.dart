
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import '../cubits/show_notes_cubit/show_notes_cubit.dart';
import 'notes_list_view.dart';


class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {


  @override
  void initState() {
    BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(
              child: NotesListView()
          ),
        ],
      ),
    );
  }
}
