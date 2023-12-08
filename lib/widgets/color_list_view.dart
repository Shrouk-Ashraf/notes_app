import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int? clickedIndex;

  List<Color> colors = const[
    Color(0xffD88C9A),
    Color(0xffF2D0A9),
    Color(0xffF1E3D3),
    Color(0xff99C1B9),
    Color(0xff8E7DBE),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
          itemCount: colors.length,
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
              },
              child: ColorItem(
                color: colors[index],
                isPicked: clickedIndex == index,),
            );
          }
      ),
    );
  }
}
