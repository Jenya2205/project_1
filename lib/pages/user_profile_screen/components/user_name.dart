import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class UserProfileScreenUserName extends StatelessWidget {
  const UserProfileScreenUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 37.0 * DeviceInfo.w),
      child: Text(
        "No name",
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 106, 30),
          fontFamily: "SF Pro",
          fontWeight: FontWeight.w500,
          fontSize: 21.0 * DeviceInfo.w
        ),
      ),
    );
  }
}
