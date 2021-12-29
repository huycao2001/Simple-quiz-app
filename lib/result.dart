import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int finalScore ;
  final Function resetQuiz; 

  String get resultPhrase{ // This is a function which takes no argument and return a String, 
    String result = "you did it";         // Specifically used for putting a string to Text widget. 
    if(finalScore > 25 ) result = "Good job"; 
    else if (finalScore > 20 ) result = "nicely done";
    else result = "Try more";  
    return result;
  }

  Result(this.finalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
                children: [
                  Text(
                    resultPhrase, // this is a string so we need to use a get - a special function to make the conditional statement. 
                    style: TextStyle( 
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(child: Text("Restart the quiz"), onPressed: resetQuiz , textColor: Colors.white,hoverColor: Colors.blue,)
                ],
              ),
    );
  }
}