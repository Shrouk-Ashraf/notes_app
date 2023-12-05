import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      title: const Text("Notes",),
      titleSpacing: 0,
      actions:const [
         CustomSearchIcon()
      ],
    );
  }
}


