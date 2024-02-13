// ignore_for_file: file_names

import 'package:hive/hive.dart';

part 'noteModel.g.dart';

// ignore: camel_case_types
@HiveType(typeId: 0)
class noteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  noteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
