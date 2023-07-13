import 'package:flutter/material.dart';

import '../widgets/add_note_button.dart';
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
              context: context, builder: (context) => const AddNoteButton());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
