import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_password_screen/controller/state_new_password_screen.dart';

class NewPasswordScreenNewPassword extends StatelessWidget {
  const NewPasswordScreenNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.0 * DeviceInfo.h,
        left: 24.0 * DeviceInfo.w,
        right: 24.0 * DeviceInfo.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New password",
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 102, 102),
                fontWeight: FontWeight.w400,
                fontFamily: "SF Pro",
                fontSize: 15.0 * DeviceInfo.w),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            child: TextField(
              onChanged: (value) {
                context
                    .read<StateNewPasswordScreen>()
                    .onChangedNewPassword(value);
              },
              obscureText:
                  context.watch<StateNewPasswordScreen>().visibilityState,
              cursorColor: const Color.fromARGB(255, 37, 37, 37),
              style: TextStyle(
                  color: const Color.fromARGB(255, 37, 37, 37),
                  fontWeight: FontWeight.w400,
                  fontFamily: "SF Pro",
                  fontSize: 15.0 * DeviceInfo.w),
              decoration: InputDecoration(
                hintText: "New password",
                hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 173, 173, 173),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 * DeviceInfo.w),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: context
                        .read<StateNewPasswordScreen>()
                        .onPressedVisibility,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Image.asset(
                      "assets/sign_in_screen/visibility_icon.png",
                      width: 24.0 * DeviceInfo.w,
                      height: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
