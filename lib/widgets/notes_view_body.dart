import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CustomAppBar(),

        ],
      ),
    );
  }
}
