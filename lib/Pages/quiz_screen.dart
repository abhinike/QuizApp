import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/Pages/components/optionButton.dart';
import 'package:quizapp/Pages/components/quiz_card.dart';
import 'package:quizapp/Provider/QuizQuesProvider.dart';

import '../utils/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    int currentquestionindex = 0;

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.deepPurple.shade200,
      child:
      Scaffold(
        appBar: AppBar(

          title: Text("Quiz"),
          actions: [
            Row(

              children: [
                Text("Score : 2/10"),
                SizedBox(width: 10,)
              ],
            )
          ],
        ),
        backgroundColor: R.bg,

        body: Center(
          child: Consumer<QuizQuesProvider>(builder: (context, value, _){
            return Column(


              children: [
                Container(
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(value.quesitons[currentquestionindex].question!),
                          OptionButton(text: value.options[currentquestionindex][0]!),
                          OptionButton(text: value.options[currentquestionindex][1]!),
                          OptionButton(text: value.options[currentquestionindex][2]!),
                          OptionButton(text: value.options[currentquestionindex][3]!),


                        ],
                      ),
                    ),
                  ),
                ),


                ElevatedButton(onPressed: (){
                  value.setUpQuiz();
                }, child: const Text("Load Questions")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    currentquestionindex = currentquestionindex ++;
                  });
                },
                    child:
                Text("next Question")),
              ],
            );
          }),
        ),
      ),
    );

  }
}
