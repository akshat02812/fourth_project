import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.onTap,{super.key});
  final void Function() onTap;
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset( 'assets/images/quiz-logo.png', 
          width: 300,
          color: const Color.fromARGB(185, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
          onPressed: (){onTap();},
          icon: const Icon(Icons.arrow_right_alt), 
          label: Text(
            'Start Quiz',
          ),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            textStyle: const TextStyle(
              fontSize: 17,
            )
          ),
          )
        ],
      ),
    );
  }
}