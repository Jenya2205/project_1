import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class UserProfileScreenAvatar extends StatelessWidget {
  const UserProfileScreenAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/profile_screen/avatar.png",
      width: 79.0 * DeviceInfo.w,
      height: 79.0 * DeviceInfo.w,
    );
  }
}
