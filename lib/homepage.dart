import 'package:flutter/material.dart';
import 'package:personal_ex/widgets/new_transaction.dart';
import 'package:personal_ex/widgets/user_transaction.dart';

import 'model/transaction.dart';
import 'widgets/transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 55.99,
        date: DateTime.now()),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    setState(() {
      transactions.add(Transaction(
          id: DateTime.now().toString(),
          title: txTitle,
          amount: double.parse(
            txAmount.toStringAsFixed(2),
          ),
          date: DateTime.now()));
    });
  }

  void startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (context) {
          return GestureDetector(
            onTap: (){},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(_addTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Pesonal Expenses'),
        actions: [
          IconButton(
              onPressed: () => startNewTransaction(context),
              icon: Icon(Icons.add))
        ],
      ),
      body: TransactionsList(transactions),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: () => startNewTransaction(context)),
    );
  }
}
