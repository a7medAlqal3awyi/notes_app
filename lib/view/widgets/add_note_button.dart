import 'package:flutter/material.dart';

import 'custom_faild.dart';
class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomField(
            label: "Title",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomField(label: "content",),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
            ),
            width: double.infinity,
            child: const Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
