import 'package:flutter/material.dart';
import 'dart:async';
import 'questionlist.dart';
import 'question.dart';
import 'QuestionBox.dart';
import 'overlay.dart';

class Quiz2 extends StatefulWidget {
  @override
  _Quiz2State createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {

  Question _currentQuestion;
  QuestionList _quizQuestion = new QuestionList(
    [
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    new Question("What country saw a world record 315 million voters turn out for elections on May 20, 1991?", "India", "United States of America", "Soviet Union", "Poland", "A"),
    new Question("What was the name given to Android 4.3?", "Lollipop", "Nutella", "Jelly Bean", "Froyo", "C"),
    new Question("Which of these is the name for the failed key escrow device introduced by the National Security Agency in 1993?", "Clipper Chip", "Enigma Machine", "Skipjack", "Nautilus", "A"),
    new Question("Which one of these is not an official development name for a Ubuntu release?", "Wily Werewolf", "Utopic Unicorn", "Trusty Tahr", "Mystic Mansion", "D"),
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    new Question("How long is an Olympic swimming pool?", "50 meters", "1 meter", "2 meters", "100 meters", "A"),
    ]
  );


  int _questionNumber = 0;
  int _score= 0;
  bool _isCorrect;
  bool _overlayVisible;

  void init(){
    _overlayVisible = false;
    _currentQuestion = _quizQuestion.nextQuestion;
    _questionNumber=_quizQuestion.questionNumber;
  }



  void choiceHandler (String choice){
    if(_questionNumber == _quizQuestion.length) {
      Timer(Duration(seconds: 3), () => this.setState(() {
        print("state setted!");

      }
      ),
      );
    }
    _isCorrect =(choice == _currentQuestion.correctChoice);
    _score = (_isCorrect)? _score++ : _score;

    this.setState(() {
      _overlayVisible = true;
    });

    Timer(Duration(seconds: 3), ()=>this.setState(() {
      init();
    }));

  }





    Column createQuizQuestion( Question obj) {
      return Column(
        children: [
          Row(
            children: [
              new QuestionBox(Colors.deepPurple, "A", obj.choiceA, () {choiceHandler( "A");}),
              new QuestionBox(Colors.deepPurple, "B", obj.choiceB, () {choiceHandler( "B");}),
            ],
          ),
          Row(
            children: [
              new QuestionBox(Colors.deepPurple, "C", obj.choiceC, () {choiceHandler( "C");}),
              new QuestionBox(Colors.deepPurple, "D", obj.choiceD, () {choiceHandler( "D");}),
            ],
          ),



        ],
      );
    }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
          title: Text('Quiz-2')
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
                  _currentQuestion.questionText, style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                ),),


            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),

          createQuizQuestion(_currentQuestion),

          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),

          _overlayVisible? new CustomOverlay(_isCorrect): new Container(),

        ],
      ),

    );






  }
}
