import 'package:flutter/material.dart';
import 'package:fourth_project/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});
  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData() {
    final List<Map<String,Object>> summary = [];
    for(var i = 0;i < chosenAnswers.length;i++){
      summary.add(
        {
          'question_index':i+1,
          'question':questions[i].text,
          'correct_answer':questions[i].answers[0],
          'user_answer':chosenAnswers[i],
        }
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(height: 30),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}


// 5th,
// 10th
// 11th
// 22th