import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/about_screen/controller/state_about_screen.dart';

class AboutScreenPrivacyPolicyBody extends StatelessWidget {
  const AboutScreenPrivacyPolicyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 158.0 * DeviceInfo.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
            child: Row(
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.read<StateAboutScreen>().setCurrentBodyIndex(0);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 80, 80, 80),
                      size: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90.0 * DeviceInfo.w),
                  child: Text(
                    "Privacy policy",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 35, 35, 35),
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0 * DeviceInfo.w),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 27.0 * DeviceInfo.h,
              left: 24.0 * DeviceInfo.w,
              right: 24.0 * DeviceInfo.w,
            ),
            child: SizedBox(
              width: 375.0 * DeviceInfo.w,
              height: 540.0 * DeviceInfo.h,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.0 * DeviceInfo.h),
                  child: Column(
                    children: [
                      Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
                        textAlign: TextAlign.start,
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
            ),
          )
        ],
      ),
    );
  }
}
