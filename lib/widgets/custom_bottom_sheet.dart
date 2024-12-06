import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_notes_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(AddNotesInitial()),
      child: Container(
          height: 350,
          decoration: BoxDecoration(
            color: const Color(0xFF0b121e),
            borderRadius: BorderRadius.circular(16),
          ),
          child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
              if (state is AddNotesFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage),
                  ),
                );
              }
              if (state is AddNotesSuccessed) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNotesLoading ? true : false,
                  child: const AddNoteForm());
            },
          )),
    );
  }
}
