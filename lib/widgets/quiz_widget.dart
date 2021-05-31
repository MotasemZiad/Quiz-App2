import 'package:flutter/material.dart';
import 'package:flutter_01/utilities/constants.dart';
import 'package:flutter_01/widgets/answer_button_widget.dart';
import 'package:flutter_01/widgets/question_Text_widget.dart';

class QuizWidget extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;

  QuizWidget({@required this.answerQuestion, @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0, right: 10.0, left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuestionTextWidget(
            questionText: kQuestions[questionIndex]['questionText'],
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          ...(kQuestions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
                (answer) => AnswerButtonWidget(
                  onPressed: () => answerQuestion(answer['score']),
                  answerText: answer['text'],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
