import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 220, 66, 45),
            Color.fromARGB(255, 255, 170, 122),
          ],
        ),
      ),
      child: SizedBox(
        width: 375.0 * DeviceInfo.w,
        height: 812.0 * DeviceInfo.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 285.31 * DeviceInfo.h,
                left: 125.79 * DeviceInfo.w,
                right: 209.76 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 39.45 * DeviceInfo.w,
                height: 39.45 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_13.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 355.26 * DeviceInfo.h,
                left: 114.67 * DeviceInfo.w,
                right: 243.45 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 16.88 * DeviceInfo.w,
                height: 16.88 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_12.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 296.31 * DeviceInfo.h,
                left: 42.23 * DeviceInfo.w,
                right: 261.6 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 71.17 * DeviceInfo.w,
                height: 71.17 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_9.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 360.0 * DeviceInfo.h,
                left: 45.0 * DeviceInfo.w,
                right: 315.94 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 14.06 * DeviceInfo.w,
                height: 14.06 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_10.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 345.26 * DeviceInfo.h,
                left: 149.87 * DeviceInfo.w,
                right: 199.07 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 26.06 * DeviceInfo.w,
                height: 26.07 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_11.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 285.58 * DeviceInfo.h,
                left: 94.58 * DeviceInfo.w,
                right: 266.28 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 14.14 * DeviceInfo.w,
                height: 14.14 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_8.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 308.19 * DeviceInfo.h,
                left: 21.12 * DeviceInfo.w,
                right: 336.59 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 17.29 * DeviceInfo.w,
                height: 17.29 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_7.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 198.41 * DeviceInfo.h,
                left: 49.02 * DeviceInfo.w,
                right: 254.51 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 71.47 * DeviceInfo.w,
                height: 71.47 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_6.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 211.33 * DeviceInfo.h,
                right: 326.84 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 48.16 * DeviceInfo.w,
                height: 89.3 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_5.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 150.0 * DeviceInfo.h,
                left: 41.76 * DeviceInfo.w,
                right: 298.46 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 34.78 * DeviceInfo.w,
                height: 34.78 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_4.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 172.0 * DeviceInfo.h,
                left: 15.0 * DeviceInfo.w,
                right: 345.86 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 14.14 * DeviceInfo.w,
                height: 14.14 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 126.0 * DeviceInfo.h,
                right: 348.55 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 26.45 * DeviceInfo.w,
                height: 37.64 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_2.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 568.0 * DeviceInfo.h),
              child: Text(
                "Lorem ipsum lorem ipsum.\nLorem ipsum lorem ipsum lorem ipsum!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 * DeviceInfo.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 459.0 * DeviceInfo.h),
              child: Text(
                "Wait for products\nto be delievered",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w500,
                    fontSize: 32.0 * DeviceInfo.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 175.0 * DeviceInfo.h,
                left: 181.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 192.0 * DeviceInfo.w,
                height: 232.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/delivery.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 115.18 * DeviceInfo.h,
                  left: 100.9 * DeviceInfo.w,
                  right: 131.0 * DeviceInfo.w),
              child: SizedBox(
                width: 143.1 * DeviceInfo.w,
                height: 87.39 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/arrow.png",
                  color: Colors.white.withOpacity(0.7),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 82.0 * DeviceInfo.h,
                  left: 44.0 * DeviceInfo.w,
                  right: 322.52 * DeviceInfo.w),
              child: SizedBox(
                width: 6.0 * DeviceInfo.w,
                height: 6.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 59.0 * DeviceInfo.h,
                  left: 70.0 * DeviceInfo.w,
                  right: 294.4 * DeviceInfo.w),
              child: SizedBox(
                width: 10.0 * DeviceInfo.w,
                height: 10.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 126.0 * DeviceInfo.h,
                  left: 338.0 * DeviceInfo.w,
                  right: 28.52 * DeviceInfo.w),
              child: SizedBox(
                width: 6.0 * DeviceInfo.w,
                height: 6.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_1.png",
                  color: Colors.white.withOpacity(0.6),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 34.0 * DeviceInfo.h,
                  left: 265.0 * DeviceInfo.w,
                  right: 98.48 * DeviceInfo.w),
              child: SizedBox(
                width: 8.63 * DeviceInfo.w,
                height: 8.63 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_1.png",
                  color: Colors.white.withOpacity(0.6),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 56.0 * DeviceInfo.h,
                  left: 281.0 * DeviceInfo.w,
                  right: 88.66 * DeviceInfo.w),
              child: SizedBox(
                width: 4.0 * DeviceInfo.w,
                height: 4.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/rec_1.png",
                  color: Colors.white.withOpacity(0.6),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 59.0 * DeviceInfo.h),
              child: SizedBox(
                width: 170.0 * DeviceInfo.w,
                height: 40.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/third_onboarding_screen/white_logo.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 673.0 * DeviceInfo.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0 * DeviceInfo.w),
                    ),
                    child: SizedBox(
                      width: 5.0 * DeviceInfo.w,
                      height: 5.0 * DeviceInfo.w,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0 * DeviceInfo.w),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0 * DeviceInfo.w),
                      ),
                      child: SizedBox(
                        width: 5.0 * DeviceInfo.w,
                        height: 5.0 * DeviceInfo.w,
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0 * DeviceInfo.w),
                    ),
                    child: SizedBox(
                      width: 20.0 * DeviceInfo.w,
                      height: 5.0 * DeviceInfo.w,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 728.0 * DeviceInfo.h,
                right: 18.0 * DeviceInfo.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        context
                            .read<StateOnboardingScreen>()
                            .onPressedSkiporFinish(context);
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(8.0 * DeviceInfo.w)),
                        child: SizedBox(
                          width: 104.0 * DeviceInfo.w,
                          height: 36.0 * DeviceInfo.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Finish",
                                style: TextStyle(
                                    fontFamily: "SF Pro",
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 223, 94, 74),
                                    fontSize: 15.0 * DeviceInfo.w),
                              ),
                              SizedBox(
                                width: 24.0 * DeviceInfo.w,
                                height: 24.0 * DeviceInfo.w,
                                child: Image.asset(
                                  "assets/onboarding_screen/first_onboarding_screen/arrow.png",
                                  color: const Color.fromARGB(255, 223, 94, 74),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
