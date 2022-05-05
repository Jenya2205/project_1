import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';
import 'package:rumbella/pages/onboarding_screen/view/onboarding_screen.dart';
import 'package:rumbella/pages/profile_screen/controller/state_profile_screen.dart';
import 'package:rumbella/pages/profile_screen/view/profile_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeviceInfo.w = MediaQuery.of(context).size.width / 375.0;
    DeviceInfo.h = MediaQuery.of(context).size.height / 812.0;
    return Scaffold(
      body: FutureBuilder(
        future: Hive.openBox("initializeOnboardingHiveBox"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (Hive.box("initializeOnboardingHiveBox")
                    .get("skipOrFinishButtons", defaultValue: false) ==
                true) {
                  Hive.box("initializeOnboardingHiveBox").close;
              return ChangeNotifierProvider(
                create: (_) => StateProfileScreen(),
                child: const ProfileScreen(),
              );
            } else {
              Hive.box("initializeOnboardingHiveBox").close;
              return ChangeNotifierProvider(
                create: (_) => StateOnboardingScreen(),
                child: const OnboardingScreen(),
              );
            }
          } else {
            return DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 25, 119, 72),
                    Color.fromARGB(255, 117, 200, 77),
                  ],
                ),
              ),
              child: SizedBox(
                width: 375.0 * DeviceInfo.w,
                height: 812.0 * DeviceInfo.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 231.0 * DeviceInfo.w,
                      height: 53.58 * DeviceInfo.h,
                      child: Image.asset(
                        "assets/splash_screen/white_logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 64.0 * DeviceInfo.h),
                      child: SizedBox(
                        width: 28.0 * DeviceInfo.w,
                        height: 28.0 * DeviceInfo.w,
                        child: const CircularProgressIndicator(
                          color: Color.fromARGB(255, 249, 255, 121),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
