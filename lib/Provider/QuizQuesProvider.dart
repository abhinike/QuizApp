

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import '../Model/quiz_question/QuizData.dart';
import '../utils/Constants.dart';

class QuizQuesProvider extends ChangeNotifier{
  int _quesIndex= 0;
  List<Results> _questions = <Results>[
    Results( category: "harder", difficulty: "hard", question:  "what's my name", correctAnswer: "Abhishek",incorrectAnswers: <String>["rahul", "vishal", "rohit"] ),
  ];
  List<List<String>> _options = [<String>[]];

  List<Results> get quesitons => _questions;
  List<List<String>> get options => _options;
  int get quesIndex => _quesIndex;

  void setUpQuiz(){
    getAllQuestions();
    optionList();
    notifyListeners();
  }


  Future<void>  getAllQuestions() async{
    final url = API.API_URL;
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    QuizData data;

    print(response.body);
    if(response.statusCode == 200){

      Map<String, dynamic> map = jsonDecode(response.body);
      List _quizlist = map['results'];

      List<Results> results = _quizlist
          .map((e) => Results.fromJson(e))
          .toList();
      print(results[0].question);
      _questions.removeAt(0);
      _questions = results;


    }//if
    else{

      _questions = <Results>[Results(category: "sports", type: "science", question: "my favourite cricketer", correctAnswer: "virat kohli",incorrectAnswers: ["dhoni", "sachin", "yuvraj"])];
    }
  }

  void optionList(){
    for(int i = 0; i<_questions.length; i++){
      _options[i].add(_questions[i].correctAnswer!);
      _options[i].addAll(_questions[i].incorrectAnswers!);
      _options[i].sort();

    }


  }




}