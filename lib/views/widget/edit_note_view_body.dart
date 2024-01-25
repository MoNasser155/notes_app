import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/views/widget/custom_appbar.dart';
import 'package:noteapp/views/widget/custom_text_field.dart';
import 'package:noteapp/views/widget/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: CustomAppbar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              appbartext: 'Edit Notes',
              icon: Icons.check,
            ),
          ),
        ),
        CustomTextField(
          onChanged: (value) {
            title = value;
          },
          hint: widget.note.title,
        ),
        CustomTextField(
          onChanged: (value) {
            content = value;
          },
          hint: widget.note.subtitle,
          maxLines: 5,
        ),
        EditNoteColorsListView(
          note: widget.note,
        ),
      ],
    );
  }
}
