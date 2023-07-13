import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/view/screens/note_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor
        ),
          brightness: Brightness.dark,
        useMaterial3: true,

        fontFamily: 'Poppins'
      ),
      home: const NoteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
