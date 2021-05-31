import 'package:flutter/material.dart';
import 'package:flutter_01/utilities/constants.dart';
import 'package:flutter_01/widgets/quiz_widget.dart';
import 'package:flutter_01/widgets/result_widget.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: HomeScreen(),
      ),
      theme: ThemeData(primarySwatch: kColorPrimary),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('Question Index: $_questionIndex');
    print(kQuestions[_questionIndex]);
    if (_questionIndex != kQuestions.length)
      print('We have more questions!');
    else
      print('No more questions!');
  }

  @override
  Widget build(BuildContext context) {
    return _questionIndex != kQuestions.length
        ? QuizWidget(
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion,
          )
        : ResultWidget(
            resultScore: _totalScore,
            resetQuiz: _resetQuiz,
          );
  }
}
