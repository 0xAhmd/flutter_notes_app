import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/bloc_observer.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/views/notes_view.dart';

//next 29

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(
            AddNotesInitial(),
          ),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
