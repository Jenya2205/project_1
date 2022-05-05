import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/about_screen_about_us/components/about_screen_about_us_body.dart';

class AboutScreenAboutUs extends StatelessWidget {
  const AboutScreenAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          "assets/dashboard_screen/main_image.png",
          width: 375.0 * DeviceInfo.w,
          height: 127.0 * DeviceInfo.w,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 3.0 * DeviceInfo.h,
              left: 207.0 * DeviceInfo.w,
              right: 163.0 * DeviceInfo.w),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 5.0 * DeviceInfo.w,
            height: 5.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 74.0 * DeviceInfo.h,
              left: 5.0 * DeviceInfo.w,
              right: 361.0 * DeviceInfo.w),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 9.0 * DeviceInfo.w,
            height: 9.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 95.0 * DeviceInfo.h,
              left: 27.0 * DeviceInfo.w,
              right: 344.0 * DeviceInfo.w),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 4.0 * DeviceInfo.w,
            height: 4.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 99.0 * DeviceInfo.h,
              left: 275.0 * DeviceInfo.w,
              right: 96.0 * DeviceInfo.w),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 4.0 * DeviceInfo.w,
            height: 4.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 80.0 * DeviceInfo.h,
          ),
          child: Image.asset(
            "assets/splash_screen/white_logo.png",
            fit: BoxFit.fill,
            width: 120.0 * DeviceInfo.w,
            height: 28.0 * DeviceInfo.w,
          ),
        ),
        const AboutScreenAboutUsBody()
      ],
    );
  }
}
