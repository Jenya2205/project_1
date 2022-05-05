import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class StateSignUpscreen extends ChangeNotifier {
  bool _checkBoxState = false;
  bool get checkBoxState => _checkBoxState;

  _changeCheckBoxState(bool value) {
    _checkBoxState = value;
    if (_email.isNotEmpty &&
        _password.isNotEmpty &&
        _confirmPassword.isNotEmpty &&
        _checkBoxState == true) {
      _signUpState = true;
    } else {
      _signUpState = false;
    }
    notifyListeners();
  }

  get changeCheckBoxState => _changeCheckBoxState;

  _onPressedSignIn(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("sign_up_screen/sign_in_screen");
  }

  get onPressedSignIn => _onPressedSignIn;

  _onPressedContinueAsGuest(BuildContext context) {
    Navigator.of(context)
        .pushReplacementNamed("sign_up_screen/onboarding_screen");
  }

  get onPressedContinueAsGuest => _onPressedContinueAsGuest;

  bool _obscureState = true;
  bool get obscureState => _obscureState;

  _changeObscureState() {
    _obscureState = !_obscureState;
    notifyListeners();
  }

  get changeObscureState => _changeObscureState;

  bool _signUpState = false;
  bool get signUpState => _signUpState;

  String _email = "";
  _onChangedEmail(String value) {
    _email = value;
    if (_email.isNotEmpty &&
        _password.isNotEmpty &&
        _confirmPassword.isNotEmpty &&
        _checkBoxState == true) {
      _signUpState = true;
    } else {
      _signUpState = false;
    }
    notifyListeners();
  }

  get onChangedEmail => _onChangedEmail;

  String _password = "";
  _onChangedPassword(String value) {
    _password = value;
    if (_email.isNotEmpty &&
        _password.isNotEmpty &&
        _confirmPassword.isNotEmpty &&
        _checkBoxState == true) {
      _signUpState = true;
    } else {
      _signUpState = false;
    }
    notifyListeners();
  }

  get onChangedPassword => _onChangedPassword;

  String _confirmPassword = "";
  _onChangedConfirmPassword(String value) {
    _confirmPassword = value;
    if (_email.isNotEmpty &&
        _password.isNotEmpty &&
        _confirmPassword.isNotEmpty &&
        _checkBoxState == true) {
      _signUpState = true;
    } else {
      _signUpState = false;
    }
    notifyListeners();
  }

  get onChangedConfirmPassword => _onChangedConfirmPassword;

  _onPressedTermsOfService(BuildContext context) {
    showBottomSheet(
        enableDrag: false,
        context: context,
        builder: (context) {
          return DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0 * DeviceInfo.w),
                  topRight: Radius.circular(25.0 * DeviceInfo.w),
                )),
            child: SizedBox(
              width: 375.0 * DeviceInfo.w,
              height: 683.0 * DeviceInfo.h,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 39.0 * DeviceInfo.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Terms of service",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 17.0 * DeviceInfo.w),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 79.0 * DeviceInfo.w,
                            right: 24.0 * DeviceInfo.w,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              child: Icon(
                                Icons.close,
                                color: const Color.fromARGB(255, 37, 37, 37),
                                size: 24.0 * DeviceInfo.w,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 29.0 * DeviceInfo.h,
                      left: 24.0 * DeviceInfo.w,
                      right: 24.0 * DeviceInfo.w,
                    ),
                    child: SizedBox(
                      height: 580.0 * DeviceInfo.h,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 37, 37),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SF Pro",
                                  fontSize: 15.0 * DeviceInfo.w),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  get onPressedTermsOfService => _onPressedTermsOfService;

  _onPressedPrivacyPolicy(BuildContext context) {
    showBottomSheet(
        enableDrag: false,
        context: context,
        builder: (context) {
          return DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0 * DeviceInfo.w),
                  topRight: Radius.circular(25.0 * DeviceInfo.w),
                )),
            child: SizedBox(
              width: 375.0 * DeviceInfo.w,
              height: 683.0 * DeviceInfo.h,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 39.0 * DeviceInfo.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Privacy policy",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 17.0 * DeviceInfo.w),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 89.0 * DeviceInfo.w,
                            right: 24.0 * DeviceInfo.w,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              child: Icon(
                                Icons.close,
                                color: const Color.fromARGB(255, 37, 37, 37),
                                size: 24.0 * DeviceInfo.w,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 29.0 * DeviceInfo.h,
                      left: 24.0 * DeviceInfo.w,
                      right: 24.0 * DeviceInfo.w,
                    ),
                    child: SizedBox(
                      height: 580.0 * DeviceInfo.h,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 37, 37),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SF Pro",
                                  fontSize: 15.0 * DeviceInfo.w),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
  get onPressedPrivacyPolicy => _onPressedPrivacyPolicy;
}
