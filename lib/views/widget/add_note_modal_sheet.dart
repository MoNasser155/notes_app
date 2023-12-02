import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
