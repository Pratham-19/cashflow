// import 'package:flutter/foundation.dart';

class Transaction {
  String? category;
  String? title;
  num? amnt;
  DateTime? date;
  Transaction(
      {required this.category,
      required this.title,
      required this.amnt,
      required this.date});
}
