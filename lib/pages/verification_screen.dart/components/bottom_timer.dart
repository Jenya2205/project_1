import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/verification_screen.dart/controller/state_verification_screen.dart';

class VerificationScreenBottomTimer extends StatelessWidget {
  const VerificationScreenBottomTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 230.0 * DeviceInfo.h),
      child: Column(
        children: [
          Text(
            "If you didn’t receive a passcode check\nyour spam folder or",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 102, 102),
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w400,
                fontSize: 15.0 * DeviceInfo.w),
          ),
          context.watch<StateVerificationScreen>().timerValue == 0
              ? Padding(
                  padding: EdgeInsets.only(top: 5.0 * DeviceInfo.h),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      child: Text(
                        "resend a passcode",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 106, 30),
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(top: 5.0 * DeviceInfo.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      context.watch<StateVerificationScreen>().timerValue >= 10
                          ? Text(
                              "resend a passcode in 00:",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 106, 30),
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w),
                            )
                          : Text(
                              "resend a passcode in 00:0",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 106, 30),
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w),
                            ),
                      Text(
                        context
                            .watch<StateVerificationScreen>()
                            .timerValueString,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 106, 30),
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
