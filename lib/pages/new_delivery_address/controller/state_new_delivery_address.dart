import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class StateNewDeliveryAddress extends ChangeNotifier {
  bool _saveAddressState = false;
  bool get saveAddressState => _saveAddressState;

  bool _selectTypePressed = false;
  bool get selectTypePressed => _selectTypePressed;

  _onPressedSelectType() {
    _selectTypePressed = !_selectTypePressed;
    notifyListeners();
  }

  get onPressedSelectType => _onPressedSelectType;

  final Color _defaultTypeColor = const Color.fromARGB(255, 240, 240, 240);
  Color get defaultTypeColor => _defaultTypeColor;

  final Color _selectedTypeColor = const Color.fromARGB(255, 37, 168, 74);
  Color get selectedTypeColor => _selectedTypeColor;

  final Color _defaultTextTypeColor = const Color.fromARGB(255, 37, 37, 37);
  Color get defaultTextTypeColor => _defaultTextTypeColor;

  final Color _selectedTextTypeColor = Colors.white;
  Color get selectedTextTypeColor => _selectedTextTypeColor;

  bool _homeTypeState = false;
  bool get homeTypeState => _homeTypeState;

  _onPressedHomeType() {
    _homeTypeState = true;
    _officeTypeState = false;
    _otherTypeState = false;
    _selectedType = "Home";
    _selectTypePressed = false;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onPressedHomeType => _onPressedHomeType;

  bool _officeTypeState = false;
  bool get officeTypeState => _officeTypeState;

  _onPressedOfficeType() {
    _officeTypeState = true;
    _homeTypeState = false;
    _otherTypeState = false;
    _selectedType = "Office";
    _selectTypePressed = false;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onPressedOfficeType => _onPressedOfficeType;

  bool _otherTypeState = false;
  bool get otherTypeState => _otherTypeState;

  _onPressedOtherType() {
    _otherTypeState = true;
    _homeTypeState = false;
    _officeTypeState = false;
    _selectedType = "Other";
    _selectTypePressed = false;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onPressedOtherType => _onPressedOtherType;

  String _selectedType = "";
  String get selectedType => _selectedType;

  String _otherType = "";
  _onChangedOtherType(String value) {
    _otherType = value;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onChangedOthertype => _onChangedOtherType;

  String _fullAddress = "";
  _onChangedFullAddress(String value) {
    _fullAddress = value;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onChangedFullAddress => _onChangedFullAddress;

  String _name = "";
  _onChangedName(String value) {
    _name = value;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onChangedName => _onChangedName;

  String _surName = "";
  _onChangedSurname(String value) {
    _surName = value;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onChangedSurname => _onChangedSurname;

  String _phone = "";
  _onChangedPhone(String value) {
    _phone = value;
    if (_selectedType.isNotEmpty &&
        _fullAddress.isNotEmpty &&
        _name.isNotEmpty &&
        _surName.isNotEmpty &&
        _phone.isNotEmpty) {
      if (_selectedType == "Other") {
        if (_otherType.isNotEmpty) {
          _saveAddressState = true;
        } else {
          _saveAddressState = false;
        }
      } else {
        _saveAddressState = true;
      }
    } else {
      _saveAddressState = false;
    }
    notifyListeners();
  }

  get onChangedPhone => _onChangedPhone;

  _onPressedArrowBack(BuildContext context) {
    if (_selectedType.isNotEmpty ||
        _fullAddress.isNotEmpty ||
        _name.isNotEmpty ||
        _surName.isNotEmpty ||
        _phone.isNotEmpty ||
        _otherType.isNotEmpty) {
      showDialog(
          context: context,
          builder: (_) {
            return Dialog(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0 * DeviceInfo.w)),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 180.0 * DeviceInfo.w,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 28.0 * DeviceInfo.w),
                        child: Text(
                          "Your progress will be lost if\nyou leave this screen.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0 * DeviceInfo.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          8.0 * DeviceInfo.w),
                                      border: Border.all(
                                          width: 1.0 * DeviceInfo.w,
                                          color: const Color.fromARGB(
                                              255, 210, 210, 210))),
                                  child: SizedBox(
                                    width: 105.0 * DeviceInfo.w,
                                    height: 43.0 * DeviceInfo.w,
                                    child: Center(
                                      child: Text(
                                        "Stay",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 37, 37, 37),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "SF Pro",
                                            fontSize: 15.0 * DeviceInfo.w),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 19.0 * DeviceInfo.w),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    context.read<StateUserProfileScreen>().setCurrentBodyIndex(3);
                                    
                                  },
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          8.0 * DeviceInfo.w),
                                      border: Border.all(
                                        width: 1.0 * DeviceInfo.w,
                                        color: const Color.fromARGB(
                                            255, 219, 38, 38),
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: 105.0 * DeviceInfo.w,
                                      height: 43.0 * DeviceInfo.w,
                                      child: Center(
                                        child: Text(
                                          "Leave",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 219, 38, 38),
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
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    } else {
      context.read<StateUserProfileScreen>().setCurrentBodyIndex(3);
    }
  }

  get onPressedArrowBack => _onPressedArrowBack;
}
