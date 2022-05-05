import 'package:flutter/material.dart';

class StateNewPaymentMethod extends ChangeNotifier {
  String _cardNumber = "";
  String _dueDate = "";
  String _cvv = "";

  bool _saveCardState = false;
  get saveCardState => _saveCardState;

  _changedCardNumber(String value) {
    _cardNumber = value;
    if (_cardNumber.isNotEmpty && _dueDate.isNotEmpty && _cvv.isNotEmpty) {
      _saveCardState = true;
    }
    notifyListeners();
  }

  get changedCardNumber => _changedCardNumber;

  _changedDueDate(String value) {
    _dueDate = value;
    if (_cardNumber.isNotEmpty && _dueDate.isNotEmpty && _cvv.isNotEmpty) {
      _saveCardState = true;
    }
    notifyListeners();
  }

  get changedDueDate => _changedDueDate;

  _changedCVV(String value) {
    _cvv = value;
    if (_cardNumber.isNotEmpty && _dueDate.isNotEmpty && _cvv.isNotEmpty) {
      _saveCardState = true;
    }
    notifyListeners();
  }

  get changedCVV => _changedCVV;
}
