import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/forgot_password/controller/state_reset_screen.dart';

class ResetPasswordScreenResetPassword extends StatelessWidget {
  const ResetPasswordScreenResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<StateResetScreen>().resetPasswordState
        ? Padding(
            padding: EdgeInsets.only(top: 40.0 * DeviceInfo.h),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () async{
                  await context.read<StateResetScreen>().onPressedResetPassword(context);
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 25, 119, 72),
                        Color.fromARGB(255, 117, 200, 77)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: SizedBox(
                    width: 231.0 * DeviceInfo.w,
                    height: 43.0 * DeviceInfo.w,
                    child: Center(
                      child: Text(
                        "Reset password",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 40.0 * DeviceInfo.h),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(100, 25, 119, 72),
                    Color.fromARGB(100, 117, 200, 77)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: SizedBox(
                width: 231.0 * DeviceInfo.w,
                height: 43.0 * DeviceInfo.w,
                child: Center(
                  child: Text(
                    "Reset password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
              ),
            ),
          );
  }
}
