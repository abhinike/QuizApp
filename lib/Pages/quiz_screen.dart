import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Pages/components/optionButton.dart';

import '../utils/colors.dart';
// import 'package:percent_indicator/percent_indicator.dart';
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
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

        body: ListView(
          children: [
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.all(16),
                child: Column(
                  children : [
                    // LinearPercentIndicator(
                    //         lineHeight: 20,
                    // ),

                    Container(
                      width: double.infinity,
                        margin: EdgeInsets.fromLTRB(22, 22, 22, 8),
                        child: Text("Where is Cansat ? jlsfjasdlfjksd flsjfljsdfjss sdjflslfjl sdfjsjdlf sdf", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)),
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
        ),
      ),
    );

  }
}
