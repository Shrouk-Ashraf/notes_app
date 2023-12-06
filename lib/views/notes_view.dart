
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context){
                  return Padding(
                    padding:  EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom
                    ),
                    child: const AddNoteBottomSheet(),
                  );
                }
            );
          },
        shape: const CircleBorder(),
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.add,color: Colors.black,),
      ),
        body: const NotesViewBody(),
    );
  }
}

