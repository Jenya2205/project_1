import 'package:flutter/material.dart';

class StateContactUs extends ChangeNotifier{
  bool _authorizatedUser = true;
  bool get authorizedUser => _authorizatedUser;
}