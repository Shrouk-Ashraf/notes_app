import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.greenAccent,
      ),
      child: const Center(
        child: Text('Add',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        ),
      ),
    );
  }
}
