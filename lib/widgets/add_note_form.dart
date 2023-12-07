import 'package:flutter/material.dart';

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
            onSaved: (value){
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
            onSaved: (value){
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 32,),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();//to call onSaved method in textFormField
              }else{
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

