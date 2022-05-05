import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/forgot_password/components/email_text_field.dart';
import 'package:rumbella/pages/forgot_password/components/reset_password_button.dart';
import 'package:rumbella/pages/forgot_password/controller/state_reset_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 248, 248, 248)),
        child: SizedBox(
          width: 375.0 * DeviceInfo.w,
          height: 812.0 * DeviceInfo.h,
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
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<StateResetScreen>().onPressedArrowBack(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromARGB(255, 37, 37, 37),
                          size: 15.0 * DeviceInfo.w,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 88.0 * DeviceInfo.w),
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0 * DeviceInfo.w),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 37.0 * DeviceInfo.h),
                child: Text(
                  "Please, enter your email address in the field below.\nThe password reset link will be sent to your email.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 37, 37, 37),
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro",
                    fontSize: 15.0 * DeviceInfo.w
                  ),
                ),
              ),
              const ResetPasswordScreenEmail(),
              const ResetPasswordScreenResetPassword()
            ],
          ),
        ),
      ),
    );
  }
}
