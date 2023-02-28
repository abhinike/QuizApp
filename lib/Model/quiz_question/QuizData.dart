import 'Results.dart';

class QuizData {
  QuizData({
      required this.responseCode,
      required this.results,});

  // factory QuizData.fromJson(dynamic json) {
  //   this.responseCode = json['response_code'];
  //   if (json['results'] != null) {
  //     results = [];
  //     json['results'].forEach((v) {
  //       results.add(Results.fromJson(v));
  //     });
  //   }
  //   return results;
  // }


  int responseCode;
  List<Results> results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = responseCode;
    if (results != null) {
      map['results'] = results.map((v) => v.toJson()).toList();
    }
    return map;
  }

}