import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1',
        title: 'Pay for Krapao Kai',
        amount: 200,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Buy the new notebook',
        amount: 20000,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: transactions.map((tx) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text("${tx.id} - ${new DateFormat('dd/MM/yyyy') .format(tx.date)}"),
                    subtitle:
                        Text("${tx.title} - ${tx.amount.toString()}"),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}
