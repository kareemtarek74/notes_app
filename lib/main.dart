import 'package:flutter/material.dart';
import 'package:flutter_application_4/Views/notesView.dart';
import 'package:flutter_application_4/constants.dart';
import 'package:flutter_application_4/models/noteModel.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(noteModelAdapter());
  runApp(const noteApp());
}

// ignore: camel_case_types
class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
