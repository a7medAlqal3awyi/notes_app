import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_faild.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
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
                autoValidateMode=AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}
