import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/about_screen/controller/state_about_screen.dart';
import 'package:rumbella/pages/about_screen/view/about_screen.dart';
import 'package:rumbella/pages/cart_screen/view/cart_screen.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';
import 'package:rumbella/pages/user_profile_screen/view/user_profile_screen.dart';

class StateMainAppScreen extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  _changeCurrentindex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  get changeCurrentIndex => _changeCurrentindex;

  final Color _activeColor = const Color.fromARGB(255, 37, 168, 74);
  Color get activeColor => _activeColor;

  final Color _unactiveColor = const Color.fromARGB(255, 102, 102, 102);
  Color get unactiveColor => _unactiveColor;

  final List<Widget> _mainAppScreenBodies = [
    ChangeNotifierProvider(
      create: (_) => StateUserProfileScreen(),
      child: const UserProfileScreen(),
    ),
    const CartScreen(),
    ChangeNotifierProvider(
      create: (_) => StateAboutScreen(),
      child: const AboutScreen(),
    )
  ];
  List<Widget> get mainAppScreenBodies => _mainAppScreenBodies;
}
