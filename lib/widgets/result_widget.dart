import 'package:flutter/material.dart';
import 'package:flutter_01/utilities/constants.dart';

class ResultWidget extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  const ResultWidget({this.resultScore, this.resetQuiz});

  String get resultPhrase {
    String result = '';
    if (resultScore <= 15) {
      result = 'You\'re awesome and innocent!';
    } else if (resultScore <= 25) {
      result = 'Pretty Likeable!';
    } else if (resultScore <= 32) {
      result = 'You\'re ... so strange!';
    } else {
      result = 'You\'re so bad!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuiz,
          style: kTextButtonStyle,
          child: Text(
            'Restart Quiz!',
          ),
        ),
      ],
    );
  }
}

/*
Widget foo() => Column(
      children: [
        ElevatedButton(
          onPressed: () => print('Raised Button got pressed'),
          child: Text('Raised Button'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
        TextButton(
          onPressed: () => print('Flat Button got pressed'),
          child: Text('Flat Button'),
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
        ),
        OutlinedButton(
          onPressed: () => print('Outline Button got pressed'),
          child: Text('Out line Button'),
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Colors.red),
          //   foregroundColor: MaterialStateProperty.all(Colors.pink),
          // ),
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );

    */
