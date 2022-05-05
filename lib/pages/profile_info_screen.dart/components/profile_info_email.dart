import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class ProfileinfoScreenEmail extends StatelessWidget {
  const ProfileinfoScreenEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0 * DeviceInfo.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0 * DeviceInfo.h),
            child: Text(
              "Email",
              style: TextStyle(
                  color: const Color.fromARGB(255, 102, 102, 102),
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            child: TextField(
              style: TextStyle(
                decorationColor: Colors.white,
                color: const Color.fromARGB(255, 37, 37, 37),
                fontWeight: FontWeight.w400,
                fontFamily: "SF Pro",
                fontSize: 15.0 * DeviceInfo.w
              ),
              cursorColor: const Color.fromARGB(255, 37, 37, 37),
              enableIMEPersonalizedLearning: true,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 26.0 * DeviceInfo.w,
                      right: 14.0 * DeviceInfo.w,
                    ),
                    child: Image.asset(
                      "assets/user_profile_screen/email.png",
                      width: 24.0 * DeviceInfo.w,
                      height: 24.0 * DeviceInfo.w,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
