import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0; 

    final _questions = const [
      { 
      'questionText': 'What\'s your favorite color?' 
      , 'answers' : [
      {'text':'Red' , 'score' : 10}, 
      {'text':'Yellow' , 'score' : 5}, 
      {'text':'Blue' , 'score' : 15}
      
      ]
      },

      { 
        'questionText': 'What\'s your favorite animal?',
        'answers' : [
        {'text':'Dog' , 'score' : 10} , {'text':'Cat' , 'score' : 5},
        {'text':'Bird' , 'score' : 10}, {'text': 'Fish' , 'score' : 20}
        ] 
      
      },

      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers' : [
        {'text':'Max' , 'score' : 10} ,
        {'text':'Kevin' , 'score' : 5},
        {'text':'Ben' , 'score' : 15} 
        ]
      }
    ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if(_questionIndex < _questions.length) _questionIndex++; 
      else _questionIndex = 0; 
    });
    //print(_questionIndex);
  }

  void _resetQuiz(){
    setState(() {
      _totalScore = 0; 
      _questionIndex = 0;      
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My testing app'),
        ),
        body:  _questionIndex < _questions.length ?  Quiz(
          answerQuestion : _answerQuestion ,
          questionIndex: _questionIndex ,
          questions: _questions
        ) 
        : Result(_totalScore, _resetQuiz ), // Return the result and the button to reset the quiz 
      ),
    );
  }
}
