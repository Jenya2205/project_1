import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/verification_screen.dart/components/bottom_timer.dart';
import 'package:rumbella/pages/verification_screen.dart/components/code_row.dart';
import 'package:rumbella/pages/verification_screen.dart/components/wrong_passcode.dart';

class VerificationScreenBody extends StatelessWidget {
  const VerificationScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 248, 248, 248)),
      child: SizedBox(
        width: 375.0 * DeviceInfo.w,
        height: 812.0 * DeviceInfo.h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 53.0 * DeviceInfo.h),
                child: SizedBox(
                  width: 171.0 * DeviceInfo.w,
                  height: 40.0 * DeviceInfo.w,
                  child: Image.asset(
                    "assets/sign_in_screen/green_logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 72.0 * DeviceInfo.h, left: 24.0 * DeviceInfo.w),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 93.0 * DeviceInfo.w),
                      child: Text(
                        "One time password",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0 * DeviceInfo.w),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 37.0 * DeviceInfo.h),
                child: Text(
                  "Enter the one time password to verify your identity.\nThe code was sent to test@mail.com.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF Pro",
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              const VerificationScreenCodeRow(),
              const VerificationScreenWrongPasscode(),
              const VerificationScreenBottomTimer()
            ],
          ),
        ),
      ),
    );
  }
}
