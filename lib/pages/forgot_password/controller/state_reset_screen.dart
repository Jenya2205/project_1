import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class StateResetScreen extends ChangeNotifier {
  bool _resetPasswordState = false;
  bool get resetPasswordState => _resetPasswordState;
  String _email = "";

  _onChangedEmail(String value) {
    _email = value;
    if (_email.isNotEmpty) {
      _resetPasswordState = true;
    } else {
      _resetPasswordState = false;
    }
    notifyListeners();
  }

  get onChangedEmail => _onChangedEmail;

  _onPressedArrowBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  get onPressedArrowBack => _onPressedArrowBack;

  _onPressedResetPassword(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      useSafeArea: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12.0 * DeviceInfo.w,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 26.0 * DeviceInfo.w),
                child: Text(
                  "An email has been sent to",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              Text(
                "test@gmail.com",
                style: TextStyle(
                    color: const Color.fromARGB(255, 37, 37, 37),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 * DeviceInfo.w),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 22.0 * DeviceInfo.h,
                    bottom: 29.0 * DeviceInfo.h,
                    left: 53.0 * DeviceInfo.w,
                    right: 53.0 * DeviceInfo.w),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed("forgot_password/verification_screen");
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
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
                            'Procced',
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
              )
            ],
          ),
        );
      },
    );
  }

  get onPressedResetPassword => _onPressedResetPassword;
}
