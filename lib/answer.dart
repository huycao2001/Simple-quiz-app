import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(3.5) ,
      child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blueGrey,
              child: Text(answerText),
              onPressed: selectHandler,
      ),
      
    );
  }
}