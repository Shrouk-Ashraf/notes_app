import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 16,),
          CustomTextField(hintText: "title"),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'Content',maxLines: 5,),

        ],
      ),
    );
  }
}
