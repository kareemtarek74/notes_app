// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import 'customBotton.dart';
import 'customTextField.dart';

class customModalBottomSheet extends StatelessWidget {
  const customModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 14),
      child: SizedBox(
        height: 700,
        child: SingleChildScrollView(
          child: addNoteForm(),
        ),
      ),
    );
  }
}

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

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
