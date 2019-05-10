import 'package:flutter/material.dart';

class QuestionsText extends StatefulWidget {

  final String _questions;
  final int _questionsNumber;

  QuestionsText(this._questions,this._questionsNumber)

  @override
  _QuestionsTextState createState() => _QuestionsTextState();
}

class _QuestionsTextState extends State<QuestionsText> with SingleTickerProviderStateMixin{

  Animation<double> _fontSizeAnimation ;
  AnimationController _fontSizeController;

  @override
  void initState(){
    super.initState();
    _fontSizeController=AnimationController(duration: Duration(milliseconds: 500),vsync: this);
    _fontSizeAnimation=CurvedAnimation(parent: _fontSizeController, curve: Curves.linear);
    _fontSizeAnimation.addListener(()=>this.setState((){}));
    _fontSizeController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Text("Statement "+widget._questionsNumber.toString()+": "+widget._questions,
          style: TextStyle(fontSize: _fontSizeAnimation.value*15),),
        ),
      ),
    );
  }
}
