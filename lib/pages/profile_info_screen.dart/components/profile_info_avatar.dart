import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/profile_info_screen.dart/controller/state_profile_info_screen.dart';

class ProfileInfoScreenAvatar extends StatelessWidget {
  const ProfileInfoScreenAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35.0 * DeviceInfo.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          context.watch<StateProfileinfoScreen>().isAvatarExist
              ? ClipOval(
                  child: Image.file(
                    context.read<StateProfileinfoScreen>().userAvatar!,
                    width: 79.0 * DeviceInfo.w,
                    height: 79.0 * DeviceInfo.w,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                )
              : Image.asset(
                  "assets/profile_screen/avatar.png",
                  width: 79.0,
                  height: 79.0,
                ),
          InkWell(
            onTap: () {
              context
                  .read<StateProfileinfoScreen>()
                  .onPressedChangeAvatar(context);
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            child: Image.asset(
              "assets/profile_info_screen/edit_photo.png",
              width: 26.0 * DeviceInfo.w,
              height: 26.0 * DeviceInfo.w,
            ),
          )
        ],
      ),
    );
  }
}
