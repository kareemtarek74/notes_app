// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'customBotton.dart';
import 'customTextField.dart';

// ignore: camel_case_types
class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

// ignore: camel_case_types
class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          customTextField(
            hintText: 'Title',
            OnSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          customTextField(
            hintText: 'Content',
            maxLines: 5,
            OnSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          customButton(
            Ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
