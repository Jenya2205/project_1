import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/about_screen/controller/state_about_screen.dart';
import 'package:rumbella/pages/about_screen_contact_us/controller/state_contact_us.dart';

class AboutUsContactUsBody extends StatelessWidget {
  const AboutUsContactUsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<StateContactUs>().authorizedUser
        ? Padding(
            padding: EdgeInsets.only(top: 158.0 * DeviceInfo.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          context
                              .read<StateAboutScreen>()
                              .setCurrentBodyIndex(0);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromARGB(255, 80, 80, 80),
                          size: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0 * DeviceInfo.w),
                        child: Text(
                          "Contact us",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 17.0 * DeviceInfo.w),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.0 * DeviceInfo.w),
                  child: Text(
                    "Please let us know if you encountered any\ndifficulties or have any app-related ideas that\nyou want to share with us.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0 * DeviceInfo.h,
                    left: 24.0 * DeviceInfo.w,
                    right: 24.0 * DeviceInfo.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your message",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 102, 102, 102),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                        child: TextField(
                          enableInteractiveSelection: false,
                          maxLength: 500,
                          maxLines: 12,
                          cursorColor: const Color.fromARGB(255, 37, 37, 37),
                          style: TextStyle(
                              decorationColor: Colors.white,
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Your message",
                              hintStyle: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 173, 173, 173),
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 158.0 * DeviceInfo.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          context
                              .read<StateAboutScreen>()
                              .setCurrentBodyIndex(0);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromARGB(255, 80, 80, 80),
                          size: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0 * DeviceInfo.w),
                        child: Text(
                          "Contact us",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 17.0 * DeviceInfo.w),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.0 * DeviceInfo.w),
                  child: Text(
                    "Please let us know if you encountered any\ndifficulties or have any app-related ideas that\nyou want to share with us.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 35.0 * DeviceInfo.h,
                    left: 24.0 * DeviceInfo.w,
                    right: 24.0 * DeviceInfo.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your email address",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 102, 102, 102),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                        child: TextField(
                          enableInteractiveSelection: false,
                          cursorColor: const Color.fromARGB(255, 37, 37, 37),
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Your email address",
                              hintStyle: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 173, 173, 173),
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0 * DeviceInfo.h,
                    left: 24.0 * DeviceInfo.w,
                    right: 24.0 * DeviceInfo.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your message",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 102, 102, 102),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                        child: TextField(
                          enableInteractiveSelection: false,
                          maxLength: 500,
                          maxLines: 12,
                          cursorColor: const Color.fromARGB(255, 37, 37, 37),
                          style: TextStyle(
                              decorationColor: Colors.white,
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Your message",
                              hintStyle: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 173, 173, 173),
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
