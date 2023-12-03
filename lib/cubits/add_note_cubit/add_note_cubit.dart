import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      var Notes_Box = Hive.box('notes_box');
      emit(AddNoteSuccess());
      Notes_Box.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
