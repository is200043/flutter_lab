import 'package:flutter/material.dart';

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

  void _onPressTomHank() {
    print('This is Tom Hank');
    setState(() {
      _questionIndex = _questionIndex + 1;
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
          Container(
            child: Text(
              questions[_questionIndex],
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            width: double.infinity,
            margin: EdgeInsets.all(20),
          ),
          RaisedButton(
            child: Text('Justin Bieber'),
            onPressed: () => print('I am clicking Justin Bieber'),
          ),
          RaisedButton(
            child: Text('Bruce Willis'),
            onPressed: () {
              print('Bruce Willis is my dad.');
            },
          ),
          RaisedButton(
            child: Text('Tom Hank'),
            onPressed: _onPressTomHank,
          ),
          RaisedButton(
            child: Text('Nicolas Cage'),
            onPressed: () => print('Click Nicolas Cage'),
          ),
        ]),
      ),
    );
  }
}
