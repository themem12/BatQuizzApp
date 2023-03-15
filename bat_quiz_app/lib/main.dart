import 'package:bat_quiz_app/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BatQuiz',
      theme: ThemeData.dark(),
      initialRoute: 'question',
      routes: {
        'menu': (context) => const MenuScreen(),
        'question': (context) => const QuestionScreen(),
      },
    );
  }
}