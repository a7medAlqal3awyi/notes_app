import 'package:flutter/material.dart';

import 'note_item.dart';
class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: NoteItem(),
      ),
    );
  }
}
