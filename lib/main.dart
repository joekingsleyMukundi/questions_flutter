import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var index = 0;
  void answerQuestion() {
    setState(() {
      index += 1;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': "what's your favarite color?",
        'answers': ['blue', 'black', 'green', 'yellow']
      },
      {
        'question': "what's your school?",
        'answers': ['spas', 'comps', 'math', 'eng']
      },
      {
        'question': "what have you specialised in?",
        'answers': ['matlab', 'spss', 'software', 'edu']
      }
    ];

    void reset() {
      setState(() {
        index = 0;
      });
      print(index);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions App"),
        ),
        body: index < questions.length
            ? Quiz(questions, answerQuestion, index)
            : Results(reset),
      ),
    );
  }
}
