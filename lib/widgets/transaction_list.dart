import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class TransactionsList extends StatelessWidget {
  List<Transaction> transactions = [];
  TransactionsList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 30,
                  child: Text(
                    '${transactions[index].amount}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      DateFormat('yyyy-mm-dd').format(transactions[index].date),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: transactions.length,
    );
  }
}
