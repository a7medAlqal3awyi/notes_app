import 'package:flutter/material.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import '../widgets/add_note_button_sheet.dart';
import '../widgets/notes_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                context: context,
                builder: (context) => const AddNoteButtonSheet());
          },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
