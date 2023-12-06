// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';

import 'custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return const NoteItem();
          },
        );
      },
    );
  }
}
