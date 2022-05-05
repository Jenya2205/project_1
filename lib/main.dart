import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/forgot_password/controller/state_reset_screen.dart';
import 'package:rumbella/pages/forgot_password/view/reset_password.dart';
import 'package:rumbella/pages/main_app_screen/controller/state_main_app_screen.dart';
import 'package:rumbella/pages/main_app_screen/view/main_app_screen.dart';
import 'package:rumbella/pages/new_password_screen/controller/state_new_password_screen.dart';
import 'package:rumbella/pages/new_password_screen/view/new_password_screen.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';
import 'package:rumbella/pages/onboarding_screen/view/onboarding_screen.dart';
import 'package:rumbella/pages/profile_screen/controller/state_profile_screen.dart';
import 'package:rumbella/pages/sign_in_screen/controller/state_sign_in_screen.dart';
import 'package:rumbella/pages/sign_in_screen/view/sign_in_screen.dart';
import 'package:rumbella/pages/sign_up-screen/controller/state_sign_up_screen.dart';
import 'package:rumbella/pages/sign_up-screen/view/sign_up_screen.dart';
import 'package:rumbella/pages/splash_screen/view/splash_screen.dart';
import 'package:rumbella/pages/verification_screen.dart/controller/state_verification_screen.dart';
import 'package:rumbella/pages/verification_screen.dart/view/verification_screen.dart';
import 'pages/profile_screen/view/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(
    MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "onboarding_screen/profile_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateProfileScreen(),
              child: const ProfileScreen(),
            ),
        "profile_screen/sign_in_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateSignInScreen(),
              child: const SignInScreen(),
            ),
        "profile_screen/sign_up_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateSignUpscreen(),
              child: const SignUpScreen(),
            ),
        "sign_in_screen/onboarding_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateOnboardingScreen(),
              child: const OnboardingScreen(),
            ),
        "sign_in_screen/sign_up_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateSignUpscreen(),
              child: const SignUpScreen(),
            ),
        "sign_up_screen/onboarding_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateOnboardingScreen(),
              child: const OnboardingScreen(),
            ),
        "sign_up_screen/sign_in_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateSignInScreen(),
              child: const SignInScreen(),
            ),
        "sign_in_screen/forgot_password": (context) => ChangeNotifierProvider(
              create: (_) => StateResetScreen(),
              child: const ResetPasswordScreen(),
            ),
        "forgot_password/verification_screen": (context) =>
            ChangeNotifierProvider(
              create: (_) => StateVerificationScreen(),
              child: const VerificationScreen(),
            ),
        "verification_screen/new_password_screen": (context) =>
            ChangeNotifierProvider(
              create: (_) => StateNewPasswordScreen(),
              child: const NewPasswordScreen(),
            ),
        "sign_in_screen/main_app_screen": (context) => ChangeNotifierProvider(
              create: (_) => StateMainAppScreen(),
              child: const MainAppScreen(),
            ),
        "log_out": (context) => ChangeNotifierProvider(
              create: (_) => StateProfileScreen(),
              child: const ProfileScreen(),
            ),
      },
    ),
  );
}
