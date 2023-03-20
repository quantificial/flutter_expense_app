import 'package:flutter/material.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
              TransactionList(),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('this is a testing!'),
              ),
            ],
          )),
    );
  }
}
