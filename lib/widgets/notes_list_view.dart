import 'package:flutter/material.dart';

import 'custom_note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context,index){
          return const CustomNoteItem();
        },
        separatorBuilder: (context,index){
          return const SizedBox(height: 8,);
        },
        itemCount: 20
    );
  }
}

