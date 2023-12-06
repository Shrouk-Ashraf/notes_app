
import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        shape: const CircleBorder(),
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.add,color: Colors.black,),
      ),
        body: const NotesViewBody(),
    );
  }
}

