import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.greenAccent,
      child: InkWell(
        onTap: () => print("Inicio"),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Lets Quizz",style: TextStyle(fontSize: 50.0,color: Colors.white,fontWeight: FontWeight.bold),),
            Text("Tap to start!",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
