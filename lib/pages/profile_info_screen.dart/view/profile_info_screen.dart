import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_info_surname.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_info_avatar.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_info_email.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_info_name.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_info_number.dart';
import 'package:rumbella/pages/profile_info_screen.dart/components/profile_screen_save_changes.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 59.0 * DeviceInfo.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<StateUserProfileScreen>()
                          .onPressedArrowBack(0);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 37, 37, 37),
                      size: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 101.0 * DeviceInfo.w),
                child: Text(
                  "Profile info",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              ),
            ],
          ),
        ),
        const ProfileInfoScreenAvatar(),
        const ProfileinfoScreenName(),
        const ProfileInfoScreenSurname(),
        const ProfileinfoScreenNumber(),
        const ProfileinfoScreenEmail(),
        const ProfileInfoScreenSaveChanges()
      ],
    );
  }
}
