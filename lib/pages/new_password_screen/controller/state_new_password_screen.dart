import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class StateNewPasswordScreen extends ChangeNotifier {
  bool _logIntate = false;
  bool get logInState => _logIntate;

  String _newPassword = "";
  _onChangedNewPassword(String value) {
    _newPassword = value;
    if (_newPassword.isNotEmpty && _confirmPassword.isNotEmpty) {
      _logIntate = true;
      notifyListeners();
    } else {
      _logIntate = false;
      notifyListeners();
    }
  }

  get onChangedNewPassword => _onChangedNewPassword;

  String _confirmPassword = "";
  _onChangedConfirmPassword(String value) {
    _confirmPassword = value;
    if (_confirmPassword.isNotEmpty && _newPassword.isNotEmpty) {
      _logIntate = true;
      notifyListeners();
    } else {
      _logIntate = false;
      notifyListeners();
    }
  }

  get onChangedConfirmPassword => _onChangedConfirmPassword;

  bool _visibilityState = true;
  bool get visibilityState => _visibilityState;

  _onPressedVisibility() {
    _visibilityState = !_visibilityState;
    notifyListeners();
  }

  get onPressedVisibility => _onPressedVisibility;

  _onPressedLogIn(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        useSafeArea: false,
        context: context,
        builder: (context) {
          return Dialog(
            insetPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0 * DeviceInfo.w),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 29.0 * DeviceInfo.h,
                  ),
                  child: Text(
                    "Congratulations!",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro",
                        fontSize: 17.0 * DeviceInfo.w),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.0 * DeviceInfo.h,
                    left: 18.0 * DeviceInfo.w,
                    right: 18.0 * DeviceInfo.w,
                  ),
                  child: Text(
                    "You password has been successfully changed.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontWeight: FontWeight.w400,
                        fontFamily: "SF Pro",
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30.0 * DeviceInfo.h,
                    bottom: 32.0 * DeviceInfo.h,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8.0 * DeviceInfo.w),
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 25, 119, 72),
                              Color.fromARGB(255, 117, 200, 77)
                            ],
                          ),
                        ),
                        child: SizedBox(
                          width: 221.0 * DeviceInfo.w,
                          height: 43.0 * DeviceInfo.w,
                          child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SF Pro",
                                  fontSize: 15.0 * DeviceInfo.w),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  get onPressedLogIn => _onPressedLogIn;
}
