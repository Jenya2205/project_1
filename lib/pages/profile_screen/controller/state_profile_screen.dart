import 'package:flutter/material.dart';

class StateProfileScreen extends ChangeNotifier{

  // _closeOnboardingHiveBox()async{
  //   if(Hive.box("initializeOnboardingHiveBox").isOpen == true){
  //     await Hive.box("initializeOnboardingHiveBox").close();
  //   }
  // }
  // get closeOnboardingHiveBox => _closeOnboardingHiveBox;

  _onPressedLogIn(BuildContext context){
    Navigator.of(context).pushReplacementNamed("profile_screen/sign_in_screen");
  }
  get onPressedLogIn => _onPressedLogIn;

   _onPressedSignUp(BuildContext context){
    Navigator.of(context).pushReplacementNamed("profile_screen/sign_up_screen");
  }
  get onPressedSignUp => _onPressedSignUp;
}