import './main.dart';
import './question.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final Function selectHandler;
  Answer(this.answerText, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green[400],
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
