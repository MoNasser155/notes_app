import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_appbar.dart';
import 'package:noteapp/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: CustomAppbar(
              appbartext: 'Edit Notes',
              icon: Icons.check,
            ),
          ),
        ),
        CustomTextField(
          hint: 'Title',
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        )
      ],
    );
  }
}
