import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/profile_info_screen.dart/controller/state_profile_info_screen.dart';

class ProfileInfoScreenSaveChanges extends StatelessWidget {
  const ProfileInfoScreenSaveChanges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<StateProfileinfoScreen>().saveChangesState?
    Padding(
      padding: EdgeInsets.only(top: 40.0 * DeviceInfo.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 25, 119, 72),
                  Color.fromARGB(255, 117, 200, 77)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: SizedBox(
              width: 231.0 * DeviceInfo.w,
              height: 43.0 * DeviceInfo.w,
              child: Center(
                child: Text(
                  "Save changes",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
            ),
          ),
        ),
      ),
    ):Padding(
      padding: EdgeInsets.only(top: 40.0 * DeviceInfo.h),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 25, 119, 72).withOpacity(0.5),
              const Color.fromARGB(255, 117, 200, 77).withOpacity(0.5)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SizedBox(
          width: 231.0 * DeviceInfo.w,
          height: 43.0 * DeviceInfo.w,
          child: Center(
            child: Text(
              "Save changes",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w),
            ),
          ),
        ),
      ),
    );
  }
}
