import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class StateOnboardingScreen extends ChangeNotifier {
  int _currentPage = 0;
  _setCurrentPage(int value) {
    _currentPage = value;
  }

  get setCurrentPage => _setCurrentPage;

  final PageController _pageController = PageController();
  PageController get pageController => _pageController;

  _onPressedNext() {
    _pageController.animateToPage(
      ++_currentPage,
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
    );
  }

  get onPressedNext => _onPressedNext;

  _onPressedSkipOrFinish(BuildContext context) async {
    final _box = await Hive.openBox("initializeOnboardingHiveBox");
    await _box.put("skipOrFinishButtons", true);
    _box.close();
    Navigator.of(context)
        .pushReplacementNamed("onboarding_screen/profile_screen");
  }

  get onPressedSkiporFinish => _onPressedSkipOrFinish;
}
