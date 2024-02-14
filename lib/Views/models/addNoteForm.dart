// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'ColorsListView.dart';
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
            maxLines: 4,
            OnSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return customButton(
                isLoading: state is AddNotesLoading ? true : false,
                Ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var formatedCurrentDate =
                        DateFormat.yMd().format(currentDate);

                    // ignore: non_constant_identifier_names
                    var NoteModel = noteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formatedCurrentDate,
                        color: const Color.fromARGB(255, 40, 148, 237).value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(NoteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
