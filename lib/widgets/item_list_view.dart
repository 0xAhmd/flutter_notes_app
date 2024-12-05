import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NoteItem();
      },
    );
  }
}
