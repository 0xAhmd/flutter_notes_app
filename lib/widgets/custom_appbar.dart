import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: GoogleFonts.lato(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Spacer(),
        const CustomIcon(
          height: 45,
          width: 45,
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
