import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class UserProfileScreenUserEmail extends StatelessWidget {
  const UserProfileScreenUserEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 23.0 * DeviceInfo.h,
        left: 44.0 * DeviceInfo.w,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/user_profile_screen/email.png",
            width: 24.0 * DeviceInfo.w,
            height: 24.0 * DeviceInfo.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.0 * DeviceInfo.w),
            child: Text(
              "test@gmail.com",
              style: TextStyle(
                  color: const Color.fromARGB(255, 135, 135, 135),
                  fontWeight: FontWeight.w400,
                  fontFamily: "SF Pro",
                  fontSize: 15.0 * DeviceInfo.w),
            ),
          ),
        ],
      ),
    );
  }
}
