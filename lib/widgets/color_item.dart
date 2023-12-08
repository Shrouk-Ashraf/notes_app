import 'package:flutter/material.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isPicked, required this.color}) : super(key: key);

  final bool isPicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isPicked?   CircleAvatar(
      backgroundColor: Colors.white,
      radius: 36,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 32,
      ),
    ) : CircleAvatar(
      backgroundColor: color,
      radius: 32,
    );
  }
}
