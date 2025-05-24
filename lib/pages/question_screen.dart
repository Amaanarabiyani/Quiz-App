import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currenQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currenQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currenQuestionIndex];

    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text(textAlign: TextAlign.center, currentQuestion.text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

          SizedBox(height: 40),

          ...currentQuestion.shuffeledAnser().map((answer) {
            return AnswerButton(text: answer, ontap: answerQuestion);
          }),
        ],
      ),
    );
  }
}
