import 'package:flutter/material.dart';
import 'package:zidio_learning_app/screens/home_screen.dart';

void main() {
  runApp(ZidioLearningApp());
}

class ZidioLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zidio Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
    );
  }
}
