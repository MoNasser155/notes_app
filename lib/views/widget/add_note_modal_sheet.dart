import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white38,
              ),
              height: 8,
              width: 40,
            ),
          ),
          const CustomTextField(
            hint: 'Title',
          ),
          const CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomButton(),
        ],
      ),
    );
  }
}
