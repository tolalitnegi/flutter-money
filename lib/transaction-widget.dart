import 'package:flutter/material.dart';
import 'package:flutter_money/transaction.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction tx;

  TransactionWidget(this.tx);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: <Widget>[
        Container(
          width: 89,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text(
            //'£' + tx.amount.toString(),
            '\$${tx.amount}', // string interpolation , $ is reserved
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.deepOrange,
            width: 2,
          )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              tx.spendText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat('yyy-MMM-dd').format(tx.date),
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        )
      ],
    ));
  }
}
