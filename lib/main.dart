import 'package:flutter/material.dart';
import './transaction-widget.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      spendText: 'New bag',
      amount: 23.99,
      date: DateTime.now(), 
    ),
     Transaction(
      id: 't2',
      spendText: 'Groceries',
      amount: 32.50,
      date: DateTime.now(), 
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
      ),
      body: Column(
        children: <Widget>[
          Card(child: Text('Charts will come here')),
          Column(children: transactions.map((tx){
            return TransactionWidget(tx);
          }).toList())
        ],
      ),
    );
  }
}
