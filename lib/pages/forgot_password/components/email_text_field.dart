import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/forgot_password/controller/state_reset_screen.dart';

class ResetPasswordScreenEmail extends StatelessWidget {
  const ResetPasswordScreenEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 42.0 * DeviceInfo.h,
        left: 24.0 * DeviceInfo.w,
        right: 24.0 * DeviceInfo.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 102, 102),
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w400,
                fontSize: 15.0 * DeviceInfo.w),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            child: TextField(
              cursorColor: const Color.fromARGB(255, 37, 37, 37),
              style: TextStyle(
                  decorationColor: Colors.white,
                  color: const Color.fromARGB(255, 37, 37, 37),
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w),
              onChanged: (value) {
                context.read<StateResetScreen>().onChangedEmail(value);
              },
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 173, 173, 173),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 * DeviceInfo.w),
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
