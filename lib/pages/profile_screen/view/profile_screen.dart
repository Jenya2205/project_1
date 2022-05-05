import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/profile_screen/controller/state_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 248, 248, 248),
        ),
        child: SizedBox(
          width: 375.0 * DeviceInfo.w,
          height: 812.0 * DeviceInfo.h,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 61.0 * DeviceInfo.h),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 29.0 * DeviceInfo.h,
                  left: 24.0 * DeviceInfo.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 79.0 * DeviceInfo.w,
                      height: 79.0 * DeviceInfo.w,
                      child: Image.asset(
                        "assets/profile_screen/avatar.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 37.0 * DeviceInfo.w),
                      child: Text(
                        "Not logged in",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 135, 135, 135),
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w500,
                            fontSize: 21.0 * DeviceInfo.w),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 38.0 * DeviceInfo.h),
                child: Text(
                  "Please log in or create a new account to\ncontinue experiencing all Rumbella’s benefits!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 102, 102, 102),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 88.0 * DeviceInfo.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<StateProfileScreen>()
                          .onPressedLogIn(context);
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 25, 119, 72),
                              Color.fromARGB(255, 117, 200, 77)
                            ],
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0 * DeviceInfo.w)),
                      child: SizedBox(
                        width: 231.0 * DeviceInfo.w,
                        height: 43.0 * DeviceInfo.w,
                        child: Center(
                          child: Text(
                            "Log in",
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0 * DeviceInfo.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<StateProfileScreen>()
                          .onPressedSignUp(context);
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 25, 119, 72),
                              Color.fromARGB(255, 117, 200, 77)
                            ],
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0 * DeviceInfo.w)),
                      child: SizedBox(
                        width: 231.0 * DeviceInfo.w,
                        height: 43.0 * DeviceInfo.w,
                        child: Center(
                          child: Text(
                            "Sign up",
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
              ),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0 * DeviceInfo.w),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
