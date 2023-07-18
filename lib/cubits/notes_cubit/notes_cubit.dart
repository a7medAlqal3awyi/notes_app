import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  void fetchNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(noteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    }  catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
