import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 10),
        decoration: BoxDecoration(
            color: Colors.green.withOpacity(.87),
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Notes",
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text("this the note item is GOOD ahead",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.5),
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
        ));
  }
}
