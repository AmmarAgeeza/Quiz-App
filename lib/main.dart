import 'package:flutter/material.dart';

//import 'question.dart';
//import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalScore=0;
  int _questionIndex = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
  }

  void answerQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  final List<Map<String, Object>> _question = [

  {
  "questionText": "What\'s your Favorite Colour?",
  "answers": [
  {'text': 'Black', 'score': 10},
  {'text': 'Yellow', 'score': 20},
  {'text': 'Red', 'score': 30},
  {'text': 'Green', 'score': 40},

  ]
},
{
"questionText": "What\'s your Favorite Animal?",
  "answers": [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Monkey', 'score': 40},
      ]
    },
];

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Quiz App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
        child: _questionIndex < _question.length
            ? Quiz(_question, _questionIndex, answerQuestion)
            : Result(resetQuiz,_totalScore),
      ),
    ),
  );
}}
