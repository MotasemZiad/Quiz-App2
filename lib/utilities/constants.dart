import 'package:flutter/material.dart';

const kColorPrimary = Colors.deepPurple;
const kTextStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600);
final kTextButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all(kColorPrimary),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.hovered)) {
        return kColorPrimary.withOpacity(0.04);
      } else if (states.contains(MaterialState.focused) ||
          states.contains(MaterialState.pressed)) {
        return kColorPrimary.withOpacity(0.12);
      }
      return null;
    },
  ),
);
const kQuestions = [
  {
    'questionText': 'What\'s your favorite color?',
    'answers': [
      {'text': 'Black', 'score': 1},
      {'text': 'White', 'score': 10},
      {'text': 'Blue', 'score': 6},
      {'text': 'Green', 'score': 5},
    ],
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answers': [
      {'text': 'Rabbit', 'score': 7},
      {'text': 'Lion', 'score': 10},
      {'text': 'Tiger', 'score': 5},
      {'text': 'Dog', 'score': 1},
    ],
  },
  {
    'questionText': 'What type of people you are?',
    'answers': [
      {'text': 'Gorgeous', 'score': 8},
      {'text': 'Smart', 'score': 10},
      {'text': 'Weird', 'score': 6},
      {'text': 'Arrogant', 'score': 2},
    ],
  },
  {
    'questionText': 'How old are you?',
    'answers': [
      {'text': '20', 'score': 8},
      {'text': '21', 'score': 10},
      {'text': '34', 'score': 6},
      {'text': '42', 'score': 2},
    ],
  },
  {
    'questionText': 'Where do you live?',
    'answers': [
      {'text': 'Germany', 'score': 8},
      {'text': 'Palestine', 'score': 10},
      {'text': 'Egypt', 'score': 6},
      {'text': 'Australia', 'score': 2},
    ],
  },
];
