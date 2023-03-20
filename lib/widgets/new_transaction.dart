import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
            onPressed: () {
              print(titleController.text);
            },
            child: Text('add tx'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text Button'),
            style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 50)),
          )
        ],
      ),
    );
  }
}
