import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EditNoteView())),
      child: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 24, left: 8),
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  "Flutter Notes",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("this the note item is GOOD ahead",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.7),
                      )),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "May31,2002",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
