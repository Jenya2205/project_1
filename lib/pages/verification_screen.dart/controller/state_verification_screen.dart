import 'dart:async';

import 'package:flutter/material.dart';

class StateVerificationScreen extends ChangeNotifier {
  final Color _readOnlyColor = const Color.fromARGB(255, 210, 210, 210);
  Color get readOnlyColor => _readOnlyColor;

  final Color _errorColor = const Color.fromARGB(255, 255, 191, 191);
  Color get errorColor => _errorColor;

  final Color _activeColor = Colors.white;
  Color get activeColor => _activeColor;

  final FocusNode _first = FocusNode();
  FocusNode get first => _first;

  bool _readOnlySecond = true;
  bool get readOnlySecond => _readOnlySecond;

  final FocusNode _second = FocusNode();
  FocusNode get second => _second;

  bool _readOnlyThird = true;
  bool get readOnlyThird => _readOnlyThird;

  final FocusNode _third = FocusNode();
  FocusNode get third => _third;

  bool _readOnlyFourth = true;
  bool get readOnlyFourth => _readOnlyFourth;

  final FocusNode _fourth = FocusNode();
  FocusNode get fourth => _fourth;

  String _firstValue = "";
  _onChangedFirstInput(String value, BuildContext context) {
    _firstValue = value;
    if (value.isNotEmpty) {
      if (value.isNotEmpty &&
          _secondValue.isNotEmpty &&
          _thirdValue.isNotEmpty &&
          _fourthValue.isNotEmpty &&
          (value + _secondValue + _thirdValue + _fourthValue != "1111")) {
        _errorState = true;
      } else {
        if (value.isNotEmpty &&
            _secondValue.isNotEmpty &&
            _thirdValue.isNotEmpty &&
            _fourthValue.isNotEmpty &&
            (value + _secondValue + _thirdValue + _fourthValue == "1111")) {
          _errorState = false;
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.of(context)
              .pushReplacementNamed("verification_screen/new_password_screen");
        }
      }
      if (_secondValue.isEmpty) {
        _readOnlySecond = false;
        FocusScope.of(context).requestFocus(_second);
      }
    } else {
      if (_secondValue.isEmpty) {
        _readOnlySecond = true;
      }
      if (_thirdValue.isEmpty) {
        _readOnlyThird = true;
      }
      if (_fourthValue.isEmpty) {
        _readOnlyFourth = true;
      }
    }
    notifyListeners();
  }

  get onChangedFirstInput => _onChangedFirstInput;

  String _secondValue = "";
  _onChangedSecondValue(String value, BuildContext context) {
    _secondValue = value;
    if (value.isNotEmpty) {
      if (value.isNotEmpty &&
          _firstValue.isNotEmpty &&
          _thirdValue.isNotEmpty &&
          _fourthValue.isNotEmpty &&
          (_firstValue + value + _secondValue + _fourthValue != "1111")) {
        _errorState = true;
      } else {
        if (value.isNotEmpty &&
            _firstValue.isNotEmpty &&
            _thirdValue.isNotEmpty &&
            _fourthValue.isNotEmpty &&
            (_firstValue + value + _secondValue + _fourthValue == "1111")) {
          _errorState = false;
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.of(context)
              .pushReplacementNamed("verification_screen/new_password_screen");
        }
      }
      if (_thirdValue.isEmpty) {
        _readOnlyThird = false;
        FocusScope.of(context).requestFocus(_third);
      }
    } else {
      if (_thirdValue.isEmpty) {
        _readOnlyThird = true;
      }
      if (_fourthValue.isEmpty) {
        _readOnlyFourth = true;
      }
    }
    notifyListeners();
  }

  get onChangedSecondValue => _onChangedSecondValue;

  String _thirdValue = "";
  _onChangedThirdValue(String value, BuildContext context) {
    _thirdValue = value;
    if (value.isNotEmpty) {
      if (value.isNotEmpty &&
          _firstValue.isNotEmpty &&
          _secondValue.isNotEmpty &&
          _fourthValue.isNotEmpty &&
          (_firstValue + value + _secondValue + _fourthValue != "1111")) {
        _errorState = true;
      } else {
        if (value.isNotEmpty &&
            _firstValue.isNotEmpty &&
            _secondValue.isNotEmpty &&
            _fourthValue.isNotEmpty &&
            (_firstValue + value + _secondValue + _fourthValue != "1111")) {
          _errorState = false;
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.of(context)
              .pushReplacementNamed("verification_screen/new_password_screen");
        }
      }
      if (_fourthValue.isEmpty) {
        _readOnlyFourth = false;
        FocusScope.of(context).requestFocus(_fourth);
      }
    } else {
      if (_secondValue.isEmpty) {
        _readOnlySecond = true;
      }
      if (_fourthValue.isEmpty) {
        _readOnlyFourth = true;
      }
    }
    notifyListeners();
  }

  get onChangedThirdValue => _onChangedThirdValue;

  String _fourthValue = "";
  bool _errorState = false;
  bool get errorState => _errorState;

  _onChangedFourthValue(String value, BuildContext context) {
    _fourthValue = value;
    if (value.isNotEmpty) {
      FocusScope.of(context).requestFocus(FocusNode());
      if (value.isNotEmpty &&
          _firstValue.isNotEmpty &&
          _thirdValue.isNotEmpty &&
          _secondValue.isNotEmpty &&
          (_firstValue + value + _thirdValue + _secondValue != "1111")) {
        _errorState = true;
      } else {
        _errorState = false;
        Navigator.of(context)
            .pushReplacementNamed("verification_screen/new_password_screen");
      }
    }
    notifyListeners();
  }

  get onChangedFourthValue => _onChangedFourthValue;

  int _timerValue = 10;
  int get timerValue => _timerValue;
  String get timerValueString => _timerValue.toString();

  _timerPeriodic() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_timerValue > 0) {
        _timerValue--;
        notifyListeners();
      } else {
        timer.cancel();
      }
    });
  }

  get timerPeriodic => _timerPeriodic;
}
