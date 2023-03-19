import 'package:expense_app/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'new shoes', amount: 90, date: DateTime.now()),
    Transaction(id: 't2', title: 'dinner', amount: 29.99, date: DateTime.now()),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Expense App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Inside Card!!x'),
                  elevation: 5,
                ),
              ),
              Container(
                child: Text('this is a testing!'),
              )
            ],
          )),
    );
  }
}
