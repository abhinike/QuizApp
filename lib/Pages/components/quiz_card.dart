import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/Model/quiz_question/QuizData.dart';
import 'package:quizapp/Provider/QuizQuesProvider.dart';

import '../../utils/colors.dart';
import 'optionButton.dart';

class QuizCard extends StatefulWidget {

   QuizCard( {Key? key}) : super(key: key) ;

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {


  @override
  Widget build(BuildContext context) {
    return Consumer<QuizQuesProvider>(builder: (context, value,child ) =>
        ListView(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.all(16),
                child: Column(
                    children : [
                      LinearPercentIndicator(
                        lineHeight: 20,
                        percent: 0.4,
                        backgroundColor: R.bg.withOpacity(0.4),
                        progressColor: R.primary,
                      ),

                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(22, 22, 22, 8),
                          child: Text(value.quesitons.toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)),
                      SizedBox(height: 30,),
                      OptionButton(text: "i dont know"),
                      OptionButton(text: "i dont know"),
                      OptionButton(text: "i dont know"),
                      OptionButton(text: "i dont know"),
                      SizedBox(height: 30,)
                    ]
                ),
              ),
            )



          ],
        )
    );
  }
}
