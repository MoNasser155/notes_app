// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/Notes_view_body.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}


