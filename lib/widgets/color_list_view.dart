import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int clickedIndex = 0;


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
                });
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
