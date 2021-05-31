import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final String answerText;
  final Function onPressed;

  AnswerButtonWidget({this.answerText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
        style: ElevatedButton.styleFrom(
            primary: Colors.purple, onPrimary: Colors.white),
        onPressed: onPressed,
        child: Text(answerText),
      ),
    );
  }
}
