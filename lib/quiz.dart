import 'package:flutter/material.dart';
import 'package:fourth_project/data/questions.dart';
import 'package:fourth_project/start_screen.dart';
import 'package:fourth_project/quiz_questions.dart';
import 'package:fourth_project/results_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}


class _QuizState extends State<Quiz>{
  final List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';
   void switchScreen(){
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      selectedAnswers.clear();
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override

  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
  if (activeScreen == 'quiz-screen'){
    screenWidget = QuizQuestions(chooseAnswer);
  }
  if (activeScreen == 'result-screen'){
    screenWidget = ResultsScreen(selectedAnswers);
  }
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
              Color.fromARGB(255, 113, 24, 230),
              Color.fromARGB(255, 130, 46, 240)
            ],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight
            )
          ),
          child:screenWidget,
        ),
        
      )
    );
  }
}