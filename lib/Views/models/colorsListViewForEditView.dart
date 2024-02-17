import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/noteModel.dart';
import 'ColorsListView.dart';

class ColorsListForEditNotesView extends StatefulWidget {
  const ColorsListForEditNotesView({super.key, required this.note});

  final noteModel note;
  @override
  State<ColorsListForEditNotesView> createState() =>
      _ColorsListForEditNotesViewState();
}

class _ColorsListForEditNotesViewState
    extends State<ColorsListForEditNotesView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;

                widget.note.color = kColors[index].value;

                setState(() {});
              },
              child: ColorItem(
                isChoosen: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
