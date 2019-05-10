import 'package:flutter/material.dart';
import 'package:game/UI/answer_button.dart';
import 'package:game/UI/quiz_text.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            AnswerButton(true, () {
              print("You answered true");
            }),
            QuestionsText("Pizza is nice?",1),
            AnswerButton(false, () {
              print("You answered false");
            })
          ],
        )
      ],
    );
  }
}
