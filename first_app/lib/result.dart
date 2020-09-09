import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "you're awesome, aren't you MK?";
    } else if (resultScore <= 12) {
      resultText = "pretty likeable.. ";
    } else {
      resultText = "You must be strange? HAHAH";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart Quiz!"),
            onPressed: resetHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
