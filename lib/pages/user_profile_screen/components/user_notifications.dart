import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class UserProfileScreenUserNotifications extends StatelessWidget {
  const UserProfileScreenUserNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0 * DeviceInfo.h),
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
                padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF Pro",
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 173.0 * DeviceInfo.w),
                child: FlutterSwitch(
                  padding: 1.5 * DeviceInfo.w,
                  activeColor: const Color.fromARGB(255, 37, 168, 74),
                  width: 38.0 * DeviceInfo.w,
                  height: 22.0 * DeviceInfo.w,
                  value: context.watch<StateUserProfileScreen>().notificationsState,
                  onToggle: (value) {
                    context.read<StateUserProfileScreen>().changedNotifications(value);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
