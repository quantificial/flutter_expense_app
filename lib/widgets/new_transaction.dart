import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({super.key, required this.addTx});

  final Function addTx;

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
            keyboardType: TextInputType.number,
            onTap: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
            onPressed: () {
              print(titleController.text);
              this.addTx(
                  titleController.text, double.parse(amountController.text));
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
