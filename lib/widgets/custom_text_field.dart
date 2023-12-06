import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.greenAccent,
      decoration: InputDecoration(
        labelText: "Title",
        labelStyle: const TextStyle(
          color: Colors.greenAccent
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: Colors.greenAccent),
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
