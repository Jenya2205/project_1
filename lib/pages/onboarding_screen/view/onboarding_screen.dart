import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/onboarding_screen/components/first_onboarding_screen/view/first_onboarding_screen.dart';
import 'package:rumbella/pages/onboarding_screen/components/second_onboarding_screen/second_onboarding_screen.dart';
import 'package:rumbella/pages/onboarding_screen/components/third_onboarding_screen/third_onboarding_screen.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeviceInfo.w = MediaQuery.of(context).size.width / 375.0;
    DeviceInfo.h = MediaQuery.of(context).size.height / 812.0;
    return Scaffold(
      body: PageView(
        controller: context.read<StateOnboardingScreen>().pageController,
        onPageChanged: (value){
          context.read<StateOnboardingScreen>().setCurrentPage(value);
        },
        children: const [
          FirstOnboardingScreen(),
          SecondOnboardingScreen(),
          ThirdOnboardingScreen()
        ],
      ),
    );
  }
}
