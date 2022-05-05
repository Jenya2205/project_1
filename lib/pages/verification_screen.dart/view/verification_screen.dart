import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/verification_screen.dart/components/verification_screen_body.dart';
import 'package:rumbella/pages/verification_screen.dart/controller/state_verification_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<StateVerificationScreen>().timerPeriodic();
    return const Scaffold(
      body: VerificationScreenBody()
    );
  }
}
