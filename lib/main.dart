import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/view/screens/note_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(noteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()  ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: primaryColor),
            brightness: Brightness.dark,
            useMaterial3: true,
            fontFamily: 'Poppins'),
        home: const NoteScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
