import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'color_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });


  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 32,),
          const ColorListView(),
          const SizedBox(height: 32,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true: false,
                onTap:onTapValidation
                ,
              );
            },
          ),
        ],
      ),
    );
  }


  void onTapValidation() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!
          .save(); //to call onSaved method in textFormField
      String date = DateFormat.yMMMd().format(DateTime.now());
      var noteModel = NoteModel(
          title: title!,
          subTitle: subTitle!,
          date: date,
          color: const Color(0xffD88C9A).value);
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}

