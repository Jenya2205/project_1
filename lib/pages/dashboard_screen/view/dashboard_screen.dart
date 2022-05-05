import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/dashboard_screen/components/dashboard_screen_body.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          "assets/dashboard_screen/main_image.png",
          width: 375.0 * DeviceInfo.w,
          height: 201.0 * DeviceInfo.w,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 59.0 * DeviceInfo.h, left: 24.0 * DeviceInfo.w),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.read<StateUserProfileScreen>().setCurrentBodyIndex(0);
                },
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 24.0 * DeviceInfo.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.0 * DeviceInfo.w),
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 108.0 * DeviceInfo.h),
          child: Text(
            "Joe Philips",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: "SF Pro",
              fontSize: 26.0 * DeviceInfo.w
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 158.0 * DeviceInfo.h),
          child: Text(
            "Registration date: 23.05.2022",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: "SF Pro",
              fontSize: 15.0 * DeviceInfo.w
            ),
          ),
        ),
        const DashboardScreenBody()
      ],
    );
  }
}
