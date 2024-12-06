import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'Edit Note',
                style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const CustomIcon(
                  height: 40,
                  width: 40,
                  icon: Icon(Icons.check),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const CustomTextField(hintText: 'Title', maxLines: 1),
        const SizedBox(height: 4),
        const CustomTextField(hintText: 'Content', maxLines: 4),
      ],
    );
  }
}
