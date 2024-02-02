import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/notesView.dart';
import 'package:flutter_application_4/constants.dart';
import 'package:flutter_application_4/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:flutter_application_4/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(noteModelAdapter());
  runApp(const noteApp());
}

// ignore: camel_case_types
class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
