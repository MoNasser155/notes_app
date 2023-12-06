// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/Notes_view_body.dart';

import 'widget/add_note_modal_sheet.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteModalSheet();
              });
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
