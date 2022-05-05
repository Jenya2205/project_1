import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class ProfileInfoScreenSurname extends StatelessWidget{
  const ProfileInfoScreenSurname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0 * DeviceInfo.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0 * DeviceInfo.h),
            child: Text(
              "Surname",
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
              cursorColor: const Color.fromARGB(255, 37, 37, 37),
              enableIMEPersonalizedLearning: true,
              style: TextStyle(
                decorationColor: Colors.white,
                color: const Color.fromARGB(255, 37, 37, 37),
                fontWeight: FontWeight.w400,
                fontFamily: "SF Pro",
                fontSize: 15.0 * DeviceInfo.w
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Surname",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 173, 173, 173),
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}