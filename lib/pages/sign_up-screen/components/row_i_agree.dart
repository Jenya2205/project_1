import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/sign_up-screen/controller/state_sign_up_screen.dart';

class SignUpScreenRowIAgree extends StatelessWidget {
  const SignUpScreenRowIAgree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 30.0 * DeviceInfo.h, left: 26.0 * DeviceInfo.w),
      child: Row(
        children: [
          SizedBox(
            width: 24.0 * DeviceInfo.w,
            height: 24.0 * DeviceInfo.w,
            child: Checkbox(
              activeColor: const Color.fromARGB(255, 13, 140, 56),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              side: const BorderSide(
                color: Color.fromARGB(255, 210, 210, 210),
              ),
              value: context.watch<StateSignUpscreen>().checkBoxState,
              onChanged: (value) {
                context.read<StateSignUpscreen>().changeCheckBoxState(value);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.0 * DeviceInfo.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "I agree to the ",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro",
                          fontSize: 15.0 * DeviceInfo.w),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          context
                              .read<StateSignUpscreen>()
                              .onPressedTermsOfService(context);
                        },
                        child: Text(
                          "Terms of service ",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 25, 119, 72),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                    ),
                    Text(
                      "and ",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro",
                          fontSize: 15.0 * DeviceInfo.w),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<StateSignUpscreen>().onPressedPrivacyPolicy(context);
                        },
                        child: Text(
                          "Privacy",
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
                Padding(
                  padding: EdgeInsets.only(top: 5.0 * DeviceInfo.h),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        context.read<StateSignUpscreen>().onPressedPrivacyPolicy(context);
                      },
                      child: Text(
                        "Policy",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 25, 119, 72),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
