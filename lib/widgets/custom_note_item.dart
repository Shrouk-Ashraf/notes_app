import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';


class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, EditNoteView.id, arguments: note);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:  Color(note.color)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(note.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: const Text("Sure you want to delete this note ?"),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel')
                            ),
                            TextButton(
                                onPressed: (){
                                  note.delete();
                                  BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
                                  Navigator.pop(context);
                                },
                                child: const Text('Delete')
                            )
                          ],
                        );
                      }
                  );
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              isThreeLine: true,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24,top: 16),
              child: Text(note.date, style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 12
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
