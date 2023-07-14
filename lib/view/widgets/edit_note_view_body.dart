import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/custom_aap_bar.dart';
import 'package:note_app/view/widgets/custom_faild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
              text: "Edit Note",
              icon: Icon(
                Icons.check,
              )),
          SizedBox(
            height: 50,
          ),
          CustomField(label: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomField(label: "Content",maxLines: 5,),

        ],
      ),
    );
  }
}
