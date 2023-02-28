

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Pages/quiz_screen.dart';

import '../utils/colors.dart';
import 'components/bar_chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;

  final screens = [
  Center(child:Text( 'Home' ,style: TextStyle(fontSize: 60) ) ) ,
    QuizScreen(),
  Center(child:Text( "Statistics" ,style: TextStyle(fontSize: 60) ) ) ,
  // Center(child:Text( Home ,style: TextStyle(fontSize: 60) ) ) ,


  ];


  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple.shade200,
          child:
          Scaffold(
            backgroundColor: R.bg,

            body: IndexedStack(
              index: _currentindex,
              children: screens,
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: R.bg,
              color: R.primary,
              height: 60,
              index: _currentindex,
              onTap: (index){
                setState(() {
                  _currentindex = index;
                });
              },
              items: [
                Icon(Icons.home, color: Colors.white,),
                Icon(Icons.article_sharp, color: Colors.white,),
                Icon(Icons.assessment_outlined, color: Colors.white,),
              ],
            ),
          ),
        );

  }
}
