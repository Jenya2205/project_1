import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_password_screen/components/confirm_password.dart';
import 'package:rumbella/pages/new_password_screen/components/log_in_button.dart';
import 'package:rumbella/pages/new_password_screen/components/new_password_field.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 248, 248, 248)),
        child: SizedBox(
          width: 375.0 * DeviceInfo.w,
          height: 812.0 * DeviceInfo.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 59.0 * DeviceInfo.h),
                  child: SizedBox(
                    width: 171.0 * DeviceInfo.w,
                    height: 40.0 * DeviceInfo.h,
                    child: Image.asset("assets/sign_in_screen/green_logo.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 72.0 * DeviceInfo.h),
                  child: Text(
                    "Enter new password",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 17.0 * DeviceInfo.w
                    ),
                  ),
                ),
                const NewPasswordScreenNewPassword(),
                const NewPasswordScreenConfirmPassword(),
                const NewPasswordScreenLoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
