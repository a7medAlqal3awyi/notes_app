import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel model) async {
    emit(AddNoteLoading());
    try {
      var notesBox =  Hive.box<NoteModel>(noteBox);
      await notesBox.add(model);
      emit(AddNoteSuccess());
    } catch (error) {
      emit(AddNoteFailure(error.toString()));
    }
  }
}
