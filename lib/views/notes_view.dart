import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/widgets/Layouts/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String routeName = '/notes-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Note',
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const CustomBottomSheet();
              });
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
