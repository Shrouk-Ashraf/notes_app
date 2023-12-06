import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 16,),
            CustomTextField(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 32,),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

