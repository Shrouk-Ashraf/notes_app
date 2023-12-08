import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.separated(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context,index){
            return const SizedBox(width: 16,);
          },
          itemBuilder: (context, index){
            return const ColorItem();
          }
      ),
    );
  }
}
