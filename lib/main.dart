import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.routeName: (context) => const NotesView(),
        EditView.routeName: (context) => const EditView(),
      },
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: kPrimaryColor,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          fontFamily: GoogleFonts.lato().fontFamily,
          scaffoldBackgroundColor: kPrimaryColor,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          )),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
