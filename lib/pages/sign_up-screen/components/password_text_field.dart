import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/sign_up-screen/controller/state_sign_up_screen.dart';

class SignUpScreenPassword extends StatelessWidget {
  const SignUpScreenPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0 * DeviceInfo.h,
        left: 24.0 * DeviceInfo.w,
        right: 24.0 * DeviceInfo.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 102, 102),
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w400,
                fontSize: 15.0 * DeviceInfo.w),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            child: TextField(
              obscureText: context.watch<StateSignUpscreen>().obscureState,
              cursorColor: const Color.fromARGB(255, 37, 37, 37),
              style: TextStyle(
                  decorationColor: Colors.white,
                  color: const Color.fromARGB(255, 37, 37, 37),
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w),
              onChanged: (value) {
                context.read<StateSignUpscreen>().onChangedPassword(value);
              },
              decoration: InputDecoration(
                suffixIcon: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: context.read<StateSignUpscreen>().changeObscureState,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Image.asset(
                      "assets/sign_in_screen/visibility_icon.png",
                      width: 24.0 * DeviceInfo.w,
                      height: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
                hintText: "Password",
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
