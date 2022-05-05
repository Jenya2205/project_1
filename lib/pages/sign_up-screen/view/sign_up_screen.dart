import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/sign_up-screen/components/confirm_password.dart';
import 'package:rumbella/pages/sign_up-screen/components/email_text_field.dart';
import 'package:rumbella/pages/sign_up-screen/components/password_text_field.dart';
import 'package:rumbella/pages/sign_up-screen/components/row_i_agree.dart';
import 'package:rumbella/pages/sign_up-screen/components/sign_up_button.dart';
import 'package:rumbella/pages/sign_up-screen/controller/state_sign_up_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(top: 72.0 * DeviceInfo.h),
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0 * DeviceInfo.w,
                    ),
                  ),
                ),
                const SignUpScreenEmail(),
                const SignUpScreenPassword(),
                const SignUpScreenConfirmPassword(),
                const SignUpScreenRowIAgree(),
                const SignUpScreenSignUpButton(),
                Padding(
                  padding: EdgeInsets.only(top: 16.0 * DeviceInfo.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 240, 240),
                                borderRadius:
                                    BorderRadius.circular(8.0 * DeviceInfo.w)),
                            child: SizedBox(
                              width: 72.0 * DeviceInfo.w,
                              height: 43.0 * DeviceInfo.w,
                              child: Image.asset(
                                "assets/profile_screen/google.png",
                                width: 18.0 * DeviceInfo.w,
                                height: 18.0 * DeviceInfo.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0 * DeviceInfo.w),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 240, 240),
                                borderRadius:
                                    BorderRadius.circular(8.0 * DeviceInfo.w),
                              ),
                              child: SizedBox(
                                width: 72.0 * DeviceInfo.w,
                                height: 43.0 * DeviceInfo.w,
                                child: Image.asset(
                                  "assets/profile_screen/facebook.png",
                                  width: 18.0 * DeviceInfo.w,
                                  height: 18.0 * DeviceInfo.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius:
                                  BorderRadius.circular(8.0 * DeviceInfo.w),
                            ),
                            child: SizedBox(
                              width: 72.0 * DeviceInfo.w,
                              height: 43.0 * DeviceInfo.w,
                              child: Image.asset(
                                "assets/profile_screen/apple.png",
                                width: 18.0 * DeviceInfo.w,
                                height: 18.0 * DeviceInfo.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0 * DeviceInfo.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account? ",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            context.read<StateSignUpscreen>().onPressedSignIn(context);
                          },
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          child: Text(
                            "Sign in ",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 25, 119, 72),
                                fontWeight: FontWeight.w400,
                                fontFamily: "SF Pro",
                                fontSize: 15.0 * DeviceInfo.w),
                          ),
                        ),
                      ),
                      Text(
                        "or ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro",
                          fontSize: 15.0 * DeviceInfo.w,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            context
                                .read<StateSignUpscreen>()
                                .onPressedContinueAsGuest(context);
                          },
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          child: Text(
                            "Continue as guest",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 25, 119, 72),
                                fontWeight: FontWeight.w400,
                                fontFamily: "SF Pro",
                                fontSize: 15.0 * DeviceInfo.w),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
