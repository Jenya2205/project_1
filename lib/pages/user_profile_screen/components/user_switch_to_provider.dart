import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class UserProfileScreenUserSwitchToProvider extends StatelessWidget {
  const UserProfileScreenUserSwitchToProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0 * DeviceInfo.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 44.0 * DeviceInfo.w),
                child: Image.asset("assets/user_profile_screen/user.png"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0 * DeviceInfo.w),
                child: Text(
                  "Switch to Provider profile",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 37, 37, 37),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0 * DeviceInfo.w
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
