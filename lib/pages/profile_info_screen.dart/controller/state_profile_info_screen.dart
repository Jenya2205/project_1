import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:rumbella/domain/device_info/device_info.dart';

class StateProfileinfoScreen extends ChangeNotifier {
  File? _userAvatar;
  File? get userAvatar => _userAvatar;

  bool _isAvatarExist = false;
  bool get isAvatarExist => _isAvatarExist;

  bool _saveChangesState = false;
  bool get saveChangesState => _saveChangesState;

  _onPressedChangeAvatar(BuildContext context) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
          barrierColor: Colors.grey.withOpacity(0.2),
          isDismissible: false,
          context: context,
          builder: (context) {
            return ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () async {
                    Navigator.of(context).pop();
                    try {
                      final FilePickerResult? _result = await FilePicker
                          .platform
                          .pickFiles(type: FileType.image);
                      if (_result == null) {
                        return;
                      } else {
                        _userAvatar = File(_result.files.first.path!);
                        _isAvatarExist = true;
                        notifyListeners();
                      }
                    } on PlatformException catch (e) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Text(e.toString()),
                            );
                          });
                    }
                  },
                  title: Center(
                    child: Text(
                      "Open gallery",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    Navigator.of(context).pop();
                    try {
                      final _result = await ImagePicker()
                          .pickImage(source: ImageSource.camera , preferredCameraDevice: CameraDevice.front);
                      if (_result == null) {
                        return;
                      }else{
                        _userAvatar = File(_result.path);
                        _isAvatarExist = true;
                        notifyListeners();
                      }
                    } on PlatformException catch (e) {
                      showDialog(context: context, builder: (context){
                        return Dialog(
                          child: Text(e.toString()),
                        );
                      });
                    }
                  },
                  title: Center(
                    child: Text(
                      "Make photo",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.of(context).pop();
                    _isAvatarExist = false;
                    notifyListeners();
                  }

                  ,
                  title: Center(
                    child: Text(
                      "Remove photo",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 219, 38, 38),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 40.0 * DeviceInfo.h),
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 240, 240, 240),
                            borderRadius:
                                BorderRadius.circular(11.0 * DeviceInfo.w)),
                        child: SizedBox(
                          width: 327.0 * DeviceInfo.w,
                          height: 47.0 * DeviceInfo.w,
                          child: Center(
                            child: Text(
                              "Discard",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 37, 37, 37),
                                fontFamily: "SF Pro",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0 * DeviceInfo.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
    }
  }

  get onPressedChangeAvatar => _onPressedChangeAvatar;
}
