import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,
    required this.title, required this.icon, this.onPressed}) : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Text(title,),
      titleSpacing: 0,
      actions:[
         CustomIcon(icon: icon, onPressed: onPressed,)
      ],
    );
  }
}


