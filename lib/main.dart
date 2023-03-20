import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Transaction> transaction = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 90.11, date: DateTime.now()),
    Transaction(id: 't2', title: 'dinner', amount: 29.99, date: DateTime.now()),
  ];

  String textinput = "";

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      onTap: () {},
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                      onTap: () {},
                    ),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                      onPressed: () {
                        print(titleController.text);
                      },
                      child: Text('add tx'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Text Button'),
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(fontSize: 50)),
                    )
                  ],
                ),
              ),
              Column(
                children: transaction.map((e) {
                  return Card(
                      child: Row(
                    children: [
                      Container(
                        width: 85,
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text('${e.amount}',
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                      ),
                      Column(
                        children: [
                          Text(e.title),
                          Text(DateFormat('yyyy-MM-dd').format(e.date))
                        ],
                      ),
                    ],
                  ));
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('this is a testing!'),
              ),
            ],
          )),
    );
  }
}
