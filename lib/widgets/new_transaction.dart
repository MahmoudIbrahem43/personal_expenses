import 'package:flutter/material.dart';
import '../model/transaction.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleControler = TextEditingController();

  final amountControler = TextEditingController();

  List<Transaction> transactions = [];

  void submitData() {
    final titleEntered = titleControler.text;
    final amountEntered = double.parse(amountControler.text);

    if (titleEntered.isEmpty || amountEntered <= 0) {
      return;
    }
    widget.addTx(titleEntered,amountEntered);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 4,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleControler,
              onSubmitted: (_) => submitData,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
             child: TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountControler,
              onSubmitted: (_) => submitData,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: submitData,
              child: const Text(
                'Add Transaction',
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
