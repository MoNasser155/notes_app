import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Colors.cyan,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 0, 79, 143),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.cyan),
          ),
        ),
      ),
    );
  }
}
