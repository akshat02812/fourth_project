import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answer, this.onTap ,{super.key});
  @override
  final String answer;
  final void Function() onTap;
  Widget build(context){
    return ElevatedButton(onPressed: (){onTap();},
    style: ElevatedButton.styleFrom(
      backgroundColor:  const Color.fromARGB(255, 54, 18, 116),
      foregroundColor: Colors.white,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.symmetric(vertical:10,horizontal:40)
    ),
     child:
     Text(
      answer,
      textAlign: TextAlign.center,
     ) 
     );
  }
}