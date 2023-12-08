import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
              initialValue: widget.note.title,
              onChanged: (value){
                title = value;
              },
              hintText: "title"
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
            initialValue: widget.note.subTitle,
            onChanged: (value){
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),

        ],
      ),
    );
  }
}
