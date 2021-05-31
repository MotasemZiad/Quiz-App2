import 'package:flutter/material.dart';
import 'package:flutter_01/utilities/constants.dart';

class QuestionTextWidget extends StatelessWidget {
  final String questionText;
  final TextAlign textAlign;

  QuestionTextWidget({@required this.questionText, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      textAlign: textAlign,
      style: kTextStyle,
    );
  }
}
