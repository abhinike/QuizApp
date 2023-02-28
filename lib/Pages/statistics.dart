import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizapp/utils/colors.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({Key? key}) : super(key: key);

  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(16),
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              heightFactor: 1.3,
              child: Column(

                children: [
                  CircularPercentIndicator(
                      radius: 200,
                    lineWidth: 16,
                    percent: 0.6,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: R.primary,
                    backgroundColor: R.bg.withOpacity(0.4),
                    center: Icon(Icons.access_time, color: R.primary, size: 40,),
                  ),
                  SizedBox(height: 20,),
                  Text('Progress', style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              heightFactor: 1.3,
              child: Column(

                children: [
                  CircularPercentIndicator(
                    animation: true,
                    // animationDuration: 800,
                    radius: 200,
                    lineWidth: 20,
                    percent: 0.9,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: R.primary,
                    backgroundColor: R.bg.withOpacity(0.4),
                    center: Icon(Icons.access_time, color: R.primary, size: 40,),
                  ),
                  SizedBox(height: 20,),
                  Text('Score', style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
          ),

        ],
      ) ,
    );
  }
}
