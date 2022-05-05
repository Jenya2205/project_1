import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/about_screen/controller/state_about_screen.dart';

class AboutScreenBody extends StatelessWidget {
  const AboutScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          "assets/dashboard_screen/main_image.png",
          width: 375.0 * DeviceInfo.w,
          height: 217.0 * DeviceInfo.w,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 50.0 * DeviceInfo.h,
            left: 41.0 * DeviceInfo.w,
            right: 326.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 8.0 * DeviceInfo.w,
            height: 8.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 87.0 * DeviceInfo.h,
            left: 121.0 * DeviceInfo.w,
            right: 248.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 6.0 * DeviceInfo.w,
            height: 6.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 92.0 * DeviceInfo.h,
            left: 223.0 * DeviceInfo.w,
            right: 147.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 5.0 * DeviceInfo.w,
            height: 5.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 96.0 * DeviceInfo.h,
            left: 311.0 * DeviceInfo.w,
            right: 55.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 9.0 * DeviceInfo.w,
            height: 9.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 183.0 * DeviceInfo.h,
            left: 39.0 * DeviceInfo.w,
            right: 329.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 7.0 * DeviceInfo.w,
            height: 7.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 174.0 * DeviceInfo.h,
            left: 241.0 * DeviceInfo.w,
            right: 123.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_3.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 11.0 * DeviceInfo.w,
            height: 11.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 61.0 * DeviceInfo.h),
          child: Text(
            "About",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "SF Pro",
                fontSize: 17.0 * DeviceInfo.w),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 124.0 * DeviceInfo.h,
          ),
          child: Image.asset(
            "assets/splash_screen/white_logo.png",
            width: 137.0 * DeviceInfo.w,
            height: 32.0 * DeviceInfo.w,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 67.0 * DeviceInfo.h,
            right: 306.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_2.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 69.0 * DeviceInfo.w,
            height: 84.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 100.0 * DeviceInfo.h,
              left: 10.0 * DeviceInfo.w,
              right: 286.0 * DeviceInfo.w),
          child: Image.asset(
            "assets/onboarding_screen/first_onboarding_screen/sushi.png",
            width: 79.0 * DeviceInfo.w,
            height: 42.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 150.0 * DeviceInfo.h,
            left: 307.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/rect_1.png",
            color: Colors.white.withOpacity(0.6),
            fit: BoxFit.fill,
            width: 68.0 * DeviceInfo.w,
            height: 92.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 128.0 * DeviceInfo.h,
            left: 253.0 * DeviceInfo.w,
          ),
          child: Image.asset(
            "assets/about_screen/pizza.png",
            fit: BoxFit.fill,
            width: 122.0 * DeviceInfo.w,
            height: 176.0 * DeviceInfo.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 282.0 * DeviceInfo.h),
          child: Column(
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    context.read<StateAboutScreen>().setCurrentBodyIndex(1);
                  },
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 240, 240),
                        borderRadius:
                            BorderRadius.circular(11.0 * DeviceInfo.w)),
                    child: SizedBox(
                      width: 327.0 * DeviceInfo.w,
                      height: 47.0 * DeviceInfo.w,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                            child: Text(
                              "About us",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 37, 37),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SF Pro",
                                  fontSize: 15.0 * DeviceInfo.w),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 205.0 * DeviceInfo.w),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: const Color.fromARGB(255, 173, 173, 173),
                              size: 24.0 * DeviceInfo.w,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.read<StateAboutScreen>().setCurrentBodyIndex(2);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 240, 240),
                        borderRadius:
                            BorderRadius.circular(11.0 * DeviceInfo.w),
                      ),
                      child: SizedBox(
                        width: 327.0 * DeviceInfo.w,
                        height: 47.0 * DeviceInfo.w,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                              child: Text(
                                "Terms of service",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 37, 37, 37),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "SF Pro",
                                    fontSize: 15.0 * DeviceInfo.w),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 157.0 * DeviceInfo.w),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: const Color.fromARGB(255, 173, 173, 173),
                                size: 24.0 * DeviceInfo.w,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.read<StateAboutScreen>().setCurrentBodyIndex(3);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 240, 240),
                        borderRadius: BorderRadius.circular(
                          11.0 * DeviceInfo.w,
                        ),
                      ),
                      child: SizedBox(
                        width: 327.0 * DeviceInfo.w,
                        height: 47.0 * DeviceInfo.w,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                              child: Text(
                                "Privacy policy",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 37, 37, 37),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "SF Pro",
                                    fontSize: 15.0 * DeviceInfo.w),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 172.0 * DeviceInfo.w),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: const Color.fromARGB(255, 173, 173, 173),
                                size: 24.0 * DeviceInfo.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.read<StateAboutScreen>().setCurrentBodyIndex(4);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 240, 240),
                          borderRadius:
                              BorderRadius.circular(11.0 * DeviceInfo.w)),
                      child: SizedBox(
                        width: 327.0 * DeviceInfo.w,
                        height: 47.0 * DeviceInfo.w,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                              child: Text(
                                "Contact us",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 37, 37, 37),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "SF Pro",
                                    fontSize: 15.0 * DeviceInfo.w),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 190.0 * DeviceInfo.w),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: const Color.fromARGB(255, 173, 173, 173),
                                size: 24.0 * DeviceInfo.w,
                              ),
                            ),
                          ],
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
    );
  }
}
