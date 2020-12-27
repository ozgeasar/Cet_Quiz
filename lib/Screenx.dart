import 'package:flutter/material.dart';
import 'package:quiz/Quiz1.dart';
import 'package:quiz/Quiz2.dart';

void gotoQuiz1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Quiz1()),
  );
}
void gotoQuiz2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Quiz2()),
  );
}


class Screenx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80),
            bottomLeft: Radius.circular(80),
          )
        ),

        actions: [

          Row(
        children: [
           Icon(
            Icons.list,
            color: Colors.white, size: 30,
          ),
          SizedBox(width: 110,),
          Text('Quiz', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),),
          SizedBox(width: 110,),
          Icon(Icons.question_answer_rounded,
          size: 30,
          color: Colors.white,),
          SizedBox(width: 70,)

        ],
      ),
    ],
       bottom: PreferredSize(
           preferredSize: Size.fromHeight(200),
         child: Padding(
           padding: const EdgeInsets.only(bottom: 36.0, left: 16),

           child: Column(
              children: [
              Row(
                children: [


                  Text("Choose Your Quiz", style: TextStyle(color: Colors.white,
              fontSize: 55,
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w400,
            ),),
            ],
          ),
                /* Stack(
                  children: [
                    SizedBox(height: 10,),
                    Positioned(
                      bottom: -20,
                      child: RaisedButton(onPressed: () {},
                        elevation: 30,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white,
                          width: 3),
                        ),
                       child: Text("Play",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      ),
                    )
                  ],
                ) */

        ],
      ),
         ),
      )
      ),







      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(

          padding: const EdgeInsets.only(top: 70),
              child: Row(
              children: [
                SizedBox(width: 50,),
                  Container(

            height: 80,
            width: 140,
                    child:
                    RaisedButton(onPressed: () {
                    gotoQuiz1(context);
                    },
                      child: Text ("Quiz 1", style: TextStyle(
              color: Colors.black54,
                        fontSize: 30,
                 ),
                      ),
                        ),

          ),
                SizedBox(width: 110,),
                Container(


                  height: 80,
                  width: 140,
                  child:
                  RaisedButton(onPressed: () {
                    gotoQuiz2(context);
                  },
                    child: Text ("Quiz 2", style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                    ),
                    ),
                  ),

                ),




        ],
      ),





    ),
    ],
      ),






    );

  }
}

