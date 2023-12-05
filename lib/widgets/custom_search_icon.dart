import 'package:flutter/material.dart';


class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Icon(Icons.search,
          size: 24,),
      ),
    );
  }
}