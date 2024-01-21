import 'package:flutter/material.dart';
import 'package:noteapp/Models/note_model.dart';

import '../../constants.dart';
import 'color_list_view.dart';

class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentColorIndex;
  @override
  void initState() {
    currentColorIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 68,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: kColors.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                currentColorIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorPicker(
                color: kColors[index],
                selectedColor: currentColorIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
