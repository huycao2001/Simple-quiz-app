import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  //const Quiz({ Key? key }) : super(key//: key);
  final Function answerQuestion;
  final int questionIndex; 
  final List<Map<String, Object>> questions; 
  
  Quiz({this.answerQuestion , this.questionIndex ,this.questions}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String ,Object>> ).map((answer){  // ... means take all the items in the list out of the list
              return Answer(() => answerQuestion(answer['score']), answer['text']);  
            }).toList(), 
            // ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
            //     return Answer(_answerQuestion, answer);
            // } ).toList(),

            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 1'),
            //   onPressed: _answerQuestion,
            // ),
            // RaisedButton(
            //   child: Text('Answer 2'),
            //   onPressed: () => print('Answer 2 chosen!'),
            // ),
            // RaisedButton(
            //   child: Text('Answer 3'),
            //   onPressed: () {
            //     // ...
            //     print('Answer 3 chosen');
            //   },
            // ),
          ],
        );
  }
}
