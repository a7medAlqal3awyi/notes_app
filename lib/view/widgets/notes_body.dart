import 'package:flutter/material.dart';

import 'custom_aap_bar.dart';
import 'note_list_veiw.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: NoteListView(),
        ),
      ]),
    );
  }
}
