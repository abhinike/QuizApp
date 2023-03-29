import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizapp/Model/quiz_question/QuizData.dart';

import 'package:quizapp/utils/Constants.dart';

class QuizService{

  Future<List<Results>?>  getAllQuestions() async{
    final url = API.API_URL;
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    // http.post();
    QuizData data;
    // List<Results> results ;

    print(response.body);
    if(response.statusCode == 200){
      // final json = jsonDecode(response.body) ;
      // print(json.runtimeType);

      // print(json['results'].runtimeType);
      // results = jsonDecode(json['results'] as String) as List<Results>;
      // List<NewsApiModel> newsList = _articalsList
      //     .map((jsonData) => NewsApiModel.fromJson(jsonData))
      //     .toList();

      Map<String, dynamic> map = jsonDecode(response.body);
      List _quizlist = map['results'];

      List<Results> results = _quizlist
          .map((e) => Results.fromJson(e))
      .toList();
      print(results[0].question);
      return results;







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


  }

  List<Results> resultFromJson(Map<String, dynamic> json){
    List<Results> results  = [];
    json['results'].map((e){
      Results result = Results(
          category: e['category'],
          type: e['type'],
          difficulty: e['difficulty'],
          question: e['question'],
          correctAnswer: e['correctAnswer']);
          // incorrectAnswers: List<String>.from(json['incorrect_answers']),);
      results.add(result);
    });//map
        return results;




  }
}

