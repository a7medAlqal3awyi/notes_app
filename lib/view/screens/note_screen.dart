import 'package:flutter/material.dart';

import '../widgets/add_note_button_sheet.dart';
import '../widgets/notes_body.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ),
              context: context, builder: (context) =>
              AddNoteButtonSheet());
        },
        child: const Icon(Icons.add,),
      ),
    );
  }
}
