import 'package:flutter/material.dart';
import 'package:quiz/widgets/answer_button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("The Questions..."),
          SizedBox(height: 40),
          AnswerButton(text: "Answer 1", ontap: () {}),
          AnswerButton(text: "Answer 1", ontap: () {}),
          AnswerButton(text: "Answer 1", ontap: () {}),
        ],
      ),
    );
  }
}
