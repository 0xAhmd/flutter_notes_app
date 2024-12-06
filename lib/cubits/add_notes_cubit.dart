import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit(super.initialState);

  void addNotes(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccessed());
    } catch (e) {
      emit(AddNotesFailure(errorMessage: e.toString()));
    }
  }
}
