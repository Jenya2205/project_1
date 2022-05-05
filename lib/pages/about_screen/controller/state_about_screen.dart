import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/about_screen/components/about_screen_body.dart';
import 'package:rumbella/pages/about_screen_about_us/view/about_screen_about_us.dart';
import 'package:rumbella/pages/about_screen_contact_us/controller/state_contact_us.dart';
import 'package:rumbella/pages/about_screen_contact_us/view/about_screen_contact_us.dart';
import 'package:rumbella/pages/about_screen_privacy_policy/view/about_screen_privacy_policy.dart';
import 'package:rumbella/pages/about_us_terms_of_service/view/about_us_terms_of_service.dart';

class StateAboutScreen extends ChangeNotifier {
  int _currentBodyIndex = 0;
  int get currentBodyIndex => _currentBodyIndex;
  setCurrentBodyIndex(int index) {
    _currentBodyIndex = index;
    notifyListeners();
  }

  final List<Widget> _aboutBodies = [
    const AboutScreenBody(),
    const AboutScreenAboutUs(),
    const AboutUsScreenTermsOfService(),
    const AboutUsScreenPrivacyPolicy(),
    ChangeNotifierProvider(
      create: (_) => StateContactUs(),
      child: const AboutUsScreenContactUs(),
    )
  ];
  List<Widget> get aboutBodies => _aboutBodies;
}
