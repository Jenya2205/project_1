import 'package:flutter/material.dart';

class StateSignInScreen extends ChangeNotifier {
 
  bool _obscureTextState = true;
  bool get obscureTextState => _obscureTextState;

  _changeObscureState() {
    _obscureTextState = !_obscureTextState;
    notifyListeners();
  }

  get changeObscureState => _changeObscureState;

  String _email = "";
  _onChangedEmail(String value) {
    _email = value;
    if (_email.isNotEmpty && _password.isNotEmpty) {
      _logInState = true;
    } else {
      _logInState = false;
    }
    notifyListeners();
  }

  get onChangedEmail => _onChangedEmail;

  String _password = "";
  _onChangedPassword(String value) {
    _password = value;
    if (_email.isNotEmpty && _password.isNotEmpty) {
      _logInState = true;
    } else {
      _logInState = false;
    }
    notifyListeners();
  }

  get onChangedPassword => _onChangedPassword;

  bool _logInState = false;
  bool get logInState => _logInState;

  _changeLogInState(BuildContext context) {}
  get changeLogInState => _changeLogInState;

  _onPressedContinueAsGuest(BuildContext context) {
    Navigator.of(context)
        .pushReplacementNamed("sign_in_screen/onboarding_screen");
  }

  get onPressedContinueAsGuest => _onPressedContinueAsGuest;

  _onPressedSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("sign_in_screen/sign_up_screen");
  }

  get onPressedSignUpScree => _onPressedSignUp;

  _onPressedForgotPassword(BuildContext context) {
    Navigator.of(context).pushNamed("sign_in_screen/forgot_password");
  }

  get onPressedForgotPassword => _onPressedForgotPassword;

  _onPressedLogIn(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.of(context).pushReplacementNamed("sign_in_screen/main_app_screen");
  }
  get onPressedLogIn => _onPressedLogIn;
}
