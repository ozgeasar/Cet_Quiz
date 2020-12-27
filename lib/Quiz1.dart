import 'package:flutter/material.dart';
import 'package:quiz/Screenx.dart';

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

    );
  }
}
