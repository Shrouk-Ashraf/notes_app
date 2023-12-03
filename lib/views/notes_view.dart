import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: NotesViewBody(),
    );
  }
}

