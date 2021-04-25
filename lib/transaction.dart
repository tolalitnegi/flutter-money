import 'package:flutter/foundation.dart';

/**
 * Class to hold a transaction 
 * not a widget
 */
class Transaction {

  final String id;
  final String spendText;
  final double amount;
  final DateTime date;

// argument constructor instead of positional
  Transaction ({
    @required this.id,
    @required this.spendText,
    @required this.amount,
    @required this.date
  }); 

}