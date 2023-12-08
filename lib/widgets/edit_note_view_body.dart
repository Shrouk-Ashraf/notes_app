import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: "title"),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'Content',maxLines: 5,),

        ],
      ),
    );
  }
}
