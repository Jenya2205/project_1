import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/verification_screen.dart/controller/state_verification_screen.dart';

class VerificationScreenWrongPasscode extends StatelessWidget {
  const VerificationScreenWrongPasscode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.0 * DeviceInfo.h),
      child: Center(
        child: Text(
          "Wrong passcode",
          style: TextStyle(
            color: context.watch<StateVerificationScreen>().errorState
                ? const Color.fromARGB(255, 236, 56, 56)
                : Colors.transparent,
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w400,
            fontSize: 15.0 * DeviceInfo.w,
          ),
        ),
      ),
    );
  }
}
