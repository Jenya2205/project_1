import 'package:flutter/material.dart';

class StateOrderHistory extends ChangeNotifier{
  List<Widget> _orderHistoryList = [];
  int get orderHistoryListLength => _orderHistoryList.length;
}