import 'package:flutter/material.dart';
import 'package:notes_app/widgets/bodies/edit_note_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String routeName = '/edit-note';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteViewBody());
  }
}
