import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class UserProfileScreenLogOut extends StatelessWidget {
  const UserProfileScreenLogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.read<StateUserProfileScreen>().onPressedLogOut(context);
        },
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.0 * DeviceInfo.h,
            bottom: 30.0 * DeviceInfo.h,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 44.0 * DeviceInfo.w),
                child: Image.asset("assets/user_profile_screen/log_out.png"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0 * DeviceInfo.w),
                child: Text(
                  "Log out",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 236, 56, 56),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
