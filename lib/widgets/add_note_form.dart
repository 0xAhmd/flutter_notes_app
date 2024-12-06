import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
            maxLines: 1,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            maxLines: 4,
            hintText: 'Content',
          ),
          CustomButton(
              title: 'Submit',
              height: 50,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNotesCubit>(context).addNotes(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              })
        ],
      ),
    );
  }
}
