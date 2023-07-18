import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/view/screens/note_veiw.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(noteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: primaryColor),
          brightness: Brightness.dark,
          useMaterial3: true,
          fontFamily: 'Poppins'),
      home: const NoteView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
