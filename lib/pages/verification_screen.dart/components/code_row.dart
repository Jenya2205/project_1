import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/verification_screen.dart/controller/state_verification_screen.dart';

class VerificationScreenCodeRow extends StatelessWidget {
  const VerificationScreenCodeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 66.0 * DeviceInfo.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.watch<StateVerificationScreen>().errorState
                  ? context.read<StateVerificationScreen>().errorColor
                  : context.read<StateVerificationScreen>().activeColor,
              borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            ),
            child: SizedBox(
              width: 60.0 * DeviceInfo.w,
              height: 68.0 * DeviceInfo.w,
              child: Center(
                child: TextField(
                  onChanged: (value) {
                    context
                        .read<StateVerificationScreen>()
                        .onChangedFirstInput(value, context);
                  },
                  enableInteractiveSelection: false,
                  keyboardType: TextInputType.number,
                  focusNode: context.read<StateVerificationScreen>().first,
                  maxLength: 1,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 80, 80, 80),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 26.0 * DeviceInfo.w),
                  cursorColor: const Color.fromARGB(255, 37, 37, 37),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0 * DeviceInfo.w),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.watch<StateVerificationScreen>().errorState
                    ? context.read<StateVerificationScreen>().errorColor
                    : context.watch<StateVerificationScreen>().readOnlySecond
                        ? context.read<StateVerificationScreen>().readOnlyColor
                        : context.read<StateVerificationScreen>().activeColor,
                borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
              ),
              child: SizedBox(
                width: 60.0 * DeviceInfo.w,
                height: 68.0 * DeviceInfo.w,
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      context
                          .read<StateVerificationScreen>()
                          .onChangedSecondValue(value, context);
                    },
                    enableInteractiveSelection: false,
                    keyboardType: TextInputType.number,
                    readOnly:
                        context.watch<StateVerificationScreen>().readOnlySecond,
                    focusNode: context.read<StateVerificationScreen>().second,
                    maxLength: 1,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 80, 80, 80),
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro",
                        fontSize: 26.0 * DeviceInfo.w),
                    cursorColor: const Color.fromARGB(255, 37, 37, 37),
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        counterText: "",
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0 * DeviceInfo.w),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: context.watch<StateVerificationScreen>().errorState
                      ? context.read<StateVerificationScreen>().errorColor
                      : context.watch<StateVerificationScreen>().readOnlyThird
                          ? context
                              .read<StateVerificationScreen>()
                              .readOnlyColor
                          : context.read<StateVerificationScreen>().activeColor,
                  borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w)),
              child: SizedBox(
                width: 60.0 * DeviceInfo.w,
                height: 68.0 * DeviceInfo.w,
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      context
                          .read<StateVerificationScreen>()
                          .onChangedThirdValue(value, context);
                    },
                    enableInteractiveSelection: false,
                    keyboardType: TextInputType.number,
                    readOnly:
                        context.watch<StateVerificationScreen>().readOnlyThird,
                    focusNode: context.read<StateVerificationScreen>().third,
                    maxLength: 1,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 80, 80, 80),
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro",
                        fontSize: 26.0 * DeviceInfo.w),
                    cursorColor: const Color.fromARGB(255, 37, 37, 37),
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        counterText: "",
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.watch<StateVerificationScreen>().errorState
                  ? context.read<StateVerificationScreen>().errorColor
                  : context.watch<StateVerificationScreen>().readOnlyFourth
                      ? context.read<StateVerificationScreen>().readOnlyColor
                      : context.read<StateVerificationScreen>().activeColor,
              borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            ),
            child: SizedBox(
              width: 60.0 * DeviceInfo.w,
              height: 68.0 * DeviceInfo.w,
              child: Center(
                child: TextField(
                  onChanged: (value) {
                    context
                        .read<StateVerificationScreen>()
                        .onChangedFourthValue(value, context);
                  },
                  enableInteractiveSelection: false,
                  keyboardType: TextInputType.number,
                  readOnly:
                      context.watch<StateVerificationScreen>().readOnlyFourth,
                  focusNode: context.read<StateVerificationScreen>().fourth,
                  maxLength: 1,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 80, 80, 80),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 26.0 * DeviceInfo.w),
                  cursorColor: const Color.fromARGB(255, 37, 37, 37),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
