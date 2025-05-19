import 'package:flutter/material.dart';
import 'package:fourth_project/data/questions.dart';
import 'package:fourth_project/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions(this.onSelectAnswer,{super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {
  var currentIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
      setState(() {
        currentIndex++;
      });
    
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style:GoogleFonts.lato(
                color:  const Color.fromARGB(255, 198, 120, 250),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answer,
                () {
                  answerQuestion(answer);
                },
              );
            })
          ],),
      ),
    );
  }
}