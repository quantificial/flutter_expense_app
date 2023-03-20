import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 90.11, date: DateTime.now()),
    Transaction(id: 't2', title: 'dinner', amount: 29.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((e) {
        return Card(
            child: Row(
          children: [
            Container(
              width: 85,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
    );
  }
}
