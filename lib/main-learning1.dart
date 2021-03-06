import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _answerText = "";
  var _isCorrect = false;

  void _onPressTomHank() {
    print('This is Tom Hank');
    setState(() {
      _questionIndex = _questionIndex + 1;
      _answerText = "True";
      _isCorrect = true;
    });
    print('Index = $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Who is your daddy?', 'Who is your mom?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              child: Text('Justin Bieber'),
              onPressed: () {
                print('I am clicking Justin Bieber');
                setState(() {
                  _answerText = "False";
                  _isCorrect = false;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              child: Text('Bruce Willis'),
              onPressed: () {
                print('Bruce Willis is my dad.');
                setState(() {
                  _answerText = "False";
                  _isCorrect = false;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              child: Text('Tom Hank'),
              onPressed: _onPressTomHank,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              child: Text('Nicolas Cage'),
              onPressed: () {
                print('Click Nicolas Cage');
                setState(() {
                  _answerText = "False";
                  _isCorrect = false;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: _isCorrect
                ? Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      _answerText,
                      style: TextStyle(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.blue[700],
                      ),
                    ))
                : Text(_answerText),
          ),
        ]),
      ),
    );
  }
}
