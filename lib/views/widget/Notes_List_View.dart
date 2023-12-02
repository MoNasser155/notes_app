// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const NoteItem();
      },
    );
  }
}
