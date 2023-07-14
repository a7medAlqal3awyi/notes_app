import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/custom_button.dart';

import 'custom_faild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomField(
            onSaved: (value) {
              title = value;
            },
            label: "Title",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomField(
            label: "Content",
            onSaved: (value) {
              title = value;
            },
            maxLines: 5,
          ),
          const Spacer(),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}
