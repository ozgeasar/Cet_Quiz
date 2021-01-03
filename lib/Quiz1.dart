import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
          title: Text('Cet Quiz-1')
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              color: new Color(0x476879ff),
              width: double.infinity,
              padding: new EdgeInsets.all(6.0),
              child: Center(
                child: Text("QUESTION " + _questionNumber.toString(), style: new TextStyle( color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
              ),
            ),
          ),

          Center(
            child: Container(
              width: double. infinity,
              decoration: new BoxDecoration(color: Colors.black54),
              padding: new EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
              child: new Center(
              child: Text(
                _currentQuestion.questionText, style: new TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
              ),),


            ),
          ),
  

        ],
        ),


      );


  }
}
