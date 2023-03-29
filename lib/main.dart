import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/Pages/home.dart';
import 'package:quizapp/Pages/quiz_screen.dart';
import 'package:quizapp/Provider/QuizQuesProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        Provider(create: (context) => QuizQuesProvider()),

      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const Home(),
      ) ,
    );

  }
}

