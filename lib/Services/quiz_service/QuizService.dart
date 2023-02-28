import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizapp/Model/quiz_question/QuizData.dart';
import 'package:quizapp/Model/quiz_question/Results.dart';
import 'package:quizapp/utils/Constants.dart';

class QuizService{

  Future<List<Results>?>  getAllQuestions() async{
    final url = API.API_URL;
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    QuizData data;
    List<Results> results ;

    print(response.body);
    if(response.statusCode == 200){
      final json = jsonDecode(response.body) ;
      print(json.runtimeType);










      // print(json['results'].runtimeType);
      // results = jsonDecode(json['results'] as String) as List<Results>;

     data = QuizData(
         responseCode: 0 ,
         results: resultFromJson(json['results'])
     );




      // data = json.map((e) =>  QuizData(responseCode: e['response_code'] , results: e['results']));
       // data = json.map((e){
       //  return QuizData(responseCode: e['response_code'],
       //      results: e['results']
       //  print(data);

      }//if




    else{
      data = QuizData(responseCode: 0,
          results: <Results>[]
      );
      // results = [];
    }
    return data.results.toList();

  }

  List<Results> resultFromJson(dynamic json){
    List<Results> results  = [];
    json['results'].map((e){
      Results result = Results(
          category: e['category'],
          type: e['type'],
          difficulty: e['difficulty'],
          question: e['question'],
          correctAnswer: e['correctAnswer'],
          incorrectAnswers: List<String>.from(json['incorrect_answers']),);
      results.add(result);
    });//map
        return results;




  }
}

