// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  void Function()? starQuiz;
  StartScreen({super.key, this.starQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80),

          Text(
            "Learn Flutter The Fun Way",
            style: TextStyle(
              color: Color.fromARGB(170, 255, 255, 255),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: starQuiz,
            icon: Icon(Icons.arrow_right_alt_outlined),
            label: Text("Start Quiz", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
