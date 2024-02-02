// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'addNoteForm.dart';

class customModalBottomSheet extends StatelessWidget {
  const customModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 14),
      child: SizedBox(
        height: 700,
        child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
              if (state is AddNotesFailure) {
                // ignore: avoid_print
                print('Failed  ${state.errMessage} ');
              }
              if (state is AddNotesSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNotesLoading ? true : false,
                  child: const addNoteForm());
            },
          ),
        ),
      ),
    );
  }
}
