import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_avatar.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_email.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_log_out.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_name.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_notifications.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_number.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_switch_to_provider.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class UserProfileScreenBody extends StatelessWidget {
  const UserProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 59.0 * DeviceInfo.h,
            right: 24.0 * DeviceInfo.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                    color: const Color.fromARGB(255, 37, 37, 37),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0 * DeviceInfo.w),
              ),
              Padding(
                padding: EdgeInsets.only(left: 115.0 * DeviceInfo.w),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: () {
                      context
                          .read<StateUserProfileScreen>()
                          .setCurrentBodyIndex(1);
                    },
                    child: Image.asset(
                      "assets/user_profile_screen/edit.png",
                      width: 24.0 * DeviceInfo.w,
                      height: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 29.0 * DeviceInfo.h,
            left: 24.0 * DeviceInfo.w,
          ),
          child: Row(
            children: const [
              UserProfileScreenAvatar(),
              UserProfileScreenUserName()
            ],
          ),
        ),
        const UserProfileScreenUserNumber(),
        const UserProfileScreenUserEmail(),
        Padding(
          padding: EdgeInsets.only(top: 32.0 * DeviceInfo.w),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<StateUserProfileScreen>().setCurrentBodyIndex(2);
              },
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/card.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0 * DeviceInfo.w),
                        child: Text(
                          "Payment details",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 127.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/arrow_down.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0 * DeviceInfo.w),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<StateUserProfileScreen>().setCurrentBodyIndex(3);
              },
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/home.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0 * DeviceInfo.w),
                        child: Text(
                          "Delievery addresses",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/arrow_down.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0 * DeviceInfo.w),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<StateUserProfileScreen>().setCurrentBodyIndex(4);
              },
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/cart.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0 * DeviceInfo.w),
                        child: Text(
                          "Order history",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 145.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/arrow_down.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0 * DeviceInfo.h),
          child: DecoratedBox(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 210, 210, 210)),
            child: SizedBox(
              width: 327.0 * DeviceInfo.w,
              height: 1.0 * DeviceInfo.w,
            ),
          ),
        ),
        const UserProfileScreenUserNotifications(),
        Padding(
          padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w)),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                        child: Text(
                          "Change password",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 148.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/arrow_forward.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<StateUserProfileScreen>().setCurrentBodyIndex(5);
              },
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w)),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 192.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/user_profile_screen/arrow_forward.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0 * DeviceInfo.h),
          child: DecoratedBox(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 210, 210, 210)),
            child: SizedBox(
              width: 327.0 * DeviceInfo.w,
              height: 1.0 * DeviceInfo.w,
            ),
          ),
        ),
        const UserProfileScreenUserSwitchToProvider(),
        const UserProfileScreenLogOut()
      ],
    );
  }
}
