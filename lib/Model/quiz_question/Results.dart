class Results {
  String category;
  String type;
  String difficulty;
  String question;
  String correctAnswer;
  List<String> incorrectAnswers;
  Results({
      required this.category,
      required this.type,
      required this.difficulty,
      required this.question,
      required this.correctAnswer,
      required this.incorrectAnswers,});

  //  Results.fromJson(Map<String, dynamic> json) {
  //   category = json['category'];
  //   type = json['type'];
  //   difficulty = json['difficulty'];
  //   question = json['question'];
  //   correctAnswer = json['correct_answer'];
  //   incorrectAnswers = json['incorrect_answers'] != null ? json['incorrect_answers'].cast<String>() : [];
  // }

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      category: json['category'],
      type: json['type'],
      difficulty: json['difficulty'],
      question: json['question'],
      correctAnswer: json['correct_answer'],
      incorrectAnswers: List<String>.from(json['incorrect_answers']),
    );
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = category;
    map['type'] = type;
    map['difficulty'] = difficulty;
    map['question'] = question;
    map['correct_answer'] = correctAnswer;
    map['incorrect_answers'] = incorrectAnswers;
    return map;
  }

}