// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customNoteCard extends StatelessWidget {
  const customNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 12),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7B),
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            'Flutter Tips',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Build your career with kareem tarek',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 8),
          child: Text(
            'Jan 12 ,2024',
            style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
          ),
        )
      ]),
    );
  }
}
