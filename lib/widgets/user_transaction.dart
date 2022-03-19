// import 'package:flutter/material.dart';

// import '../model/transaction.dart';
// import 'transaction_list.dart';
// import 'new_transaction.dart';

// class UserTransaction extends StatefulWidget {
//   @override
//   State<UserTransaction> createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {
//   final List<Transaction> transactions = [
//     Transaction(
//       id: 't1',
//       title: 'New Shoes',
//       amount: 69.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//         id: 't2',
//         title: 'Weekly Groceries',
//         amount: 55.99,
//         date: DateTime.now()),
//   ];

//   void _addTransaction(String txTitle, double txAmount) {
//     setState(() {
//       transactions.add(Transaction(
//           id: DateTime.now().toString(),
//           title: txTitle,
//           amount: double.parse(txAmount.toStringAsFixed(2),),
//           date: DateTime.now()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTransaction(_addTransaction),
//         TransactionsList(transactions),
//       ],
//     );
//   }
// }
