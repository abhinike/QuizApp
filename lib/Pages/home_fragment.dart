import 'package:flutter/material.dart';
import 'package:quizapp/Services/quiz_service/QuizService.dart';

import '../Model/quiz_question/QuizData.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {

    String text = "hello";
    return Container(
      child: Center(
        child: Column(
          children: [
            Center(child:Text( 'Home' ,style: TextStyle(fontSize: 60) ) ) ,
            ElevatedButton(
                onPressed: () async {
                  QuizService service =  QuizService();
                  List<Results>? list = await service.getAllQuestions();
                  print(list?.length);
                  print(list![0].question);
                  setState(() {
                    text = list[0].question.toString();
                  });
                },
                child: Text("api call")),
            Text(text),
          ],
        ),
      ),
    );
  }
}
