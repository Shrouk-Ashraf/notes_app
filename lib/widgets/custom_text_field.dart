import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.maxLines = 1,
    this.onChanged, this.onSaved
  }) : super(key: key);

  final String hintText;
  final int maxLines ;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'This field is required';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color ?? Colors.white
        )
      );
  }
}
