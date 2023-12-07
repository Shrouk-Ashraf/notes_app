import 'package:flutter/material.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 32),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
