import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_appbar.dart';

import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: CustomAppbar(),
          ),
        ),
        NoteItem()
      ],
    );
  }
}
