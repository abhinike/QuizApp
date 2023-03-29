import 'dart:math';

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
          GridView.count(

          crossAxisCount: 2,
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
                    SizedBox(height: 10,),
                    CircularPercentIndicator(
                        radius: 100,
                      lineWidth: 8,
                      percent: 0.6,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: R.primary,
                      backgroundColor: R.bg.withOpacity(0.4),
                      center: Icon(Icons.access_time, color: R.primary, size: 40,),
                    ),
                    SizedBox(height: 20,),
                    Text('Progress', style: TextStyle(fontSize: 20),)
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
                    SizedBox(height: 10,),
                    CircularPercentIndicator(
                      animation: true,
                      // animationDuration: 800,
                      radius: 100,
                      lineWidth: 10,
                      percent: 0.9,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: R.primary,
                      backgroundColor: R.bg.withOpacity(0.4),
                      center: Icon(Icons.access_time, color: R.primary, size: 40,),
                    ),
                    SizedBox(height: 20,),
                    Text('Score', style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),

          ],
        ),
          Container(
            height: 600,
            child: Center(
              child: Card(
                child: Row(
                  children: [
                    Transform.rotate(
                      angle: pi/2,
                      child: LinearPercentIndicator(
                        percent: 0.3,
                      ),
                    ),
                    Transform.rotate(
                      angle: pi/2,
                      child: LinearPercentIndicator(
                        percent: 0.8,
                      ),
                    ),
                    Transform.rotate(
                      angle: pi/2,
                      child: LinearPercentIndicator(
                        percent: 0.8,
                      ),
                    ),
                    Transform.rotate(
                      angle: pi/2,
                      child: LinearPercentIndicator(
                        percent: 0.6,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ]
      ) ,

    );
  }
}
