import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'color_item.dart';


class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int clickedIndex ;

  @override
  void initState() {
    clickedIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context,index){
            return const SizedBox(width: 16,);
          },
          itemBuilder: (context, index){
            return  GestureDetector(
              onTap: (){
                setState(() {
                  clickedIndex = index;
                  widget.note.color = kColors[index].value;
                });
              },
              child: ColorItem(
                color: kColors[index],
                isPicked: clickedIndex == index,),
            );
          }
      ),
    );
  }
}

