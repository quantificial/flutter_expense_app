import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String textinput = "";

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
                  child: Text('Inside Card!!'),
                  elevation: 5,
                ),
              ),
              Container(
                child: Text('this is a testing!'),
              ),
              UserTransactions(),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('this is a testing!'),
              ),
            ],
          )),
    );
  }
}
