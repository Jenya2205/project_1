import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 208, 103, 58),
            Color.fromARGB(255, 251, 205, 45),
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
                top: 126.0 * DeviceInfo.h,
                right: 295.4 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 10.6 * DeviceInfo.w,
                height: 10.6 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 144.0 * DeviceInfo.h,
                right: 152.4 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 10.6 * DeviceInfo.w,
                height: 10.6 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 227.81 * DeviceInfo.h,
                left: 317.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 10.6 * DeviceInfo.w,
                height: 10.6 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 343.0 * DeviceInfo.h,
                right: 285.16 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 9.84 * DeviceInfo.w,
                height: 9.84 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 417.92 * DeviceInfo.h,
                right: 160.35 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 4.0 * DeviceInfo.w,
                height: 4.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 41.0 * DeviceInfo.h,
                left: 125.52 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 6.0 * DeviceInfo.w,
                height: 6.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 39.56 * DeviceInfo.h,
                left: 260.56 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 123.92 * DeviceInfo.w,
                height: 123.82 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/rec_1.png",
                  color: Colors.white.withOpacity(0.6),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 221.34 * DeviceInfo.h,
                right: 265.69 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 109.31 * DeviceInfo.w,
                height: 109.31 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/rec_2.png",
                  color: Colors.white.withOpacity(0.6),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 53.5 * DeviceInfo.h),
              child: SizedBox(
                width: 146.53 * DeviceInfo.w,
                height: 359.5 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/arrow.png",
                  color: Colors.white.withOpacity(0.7),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 73.37 * DeviceInfo.h,
                left: 192.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 175.0 * DeviceInfo.w,
                height: 170.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/box.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 177.37 * DeviceInfo.h,
                left: 29.0 * DeviceInfo.w,
                right: 189.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 157.0 * DeviceInfo.w,
                height: 165.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/food_2.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 293.37 * DeviceInfo.h,
                left: 106.0 *DeviceInfo.w,
                right: 32.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 257.0 * DeviceInfo.w,
                height: 160.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/food_1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 70.53 * DeviceInfo.h,
                left: 180.54 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 150.0 * DeviceInfo.w,
                height: 150.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/second_onboarding_screen/pizza.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 478.0 * DeviceInfo.h),
              child: Text(
                "Make an order",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF Pro",
                    fontSize: 32.0 * DeviceInfo.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 568.0 * DeviceInfo.h),
              child: Text(
                "Lorem ipsum lorem ipsum.\nLorem ipsum lorem ipsum lorem ipsum!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro",
                    fontSize: 15.0 * DeviceInfo.w),
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
                        width: 20.0 * DeviceInfo.w,
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
                      width: 5.0 * DeviceInfo.w,
                      height: 5.0 * DeviceInfo.w,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 728.0 * DeviceInfo.h,
                left: 33.5 * DeviceInfo.w,
                right: 33.5 * DeviceInfo.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap:
                          context.read<StateOnboardingScreen>().onPressedNext,
                      child: Row(
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                                fontFamily: "SF Pro",
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15.0 * DeviceInfo.w),
                          ),
                          SizedBox(
                            width: 24.0 * DeviceInfo.w,
                            height: 24.0 * DeviceInfo.w,
                            child: Image.asset(
                              "assets/onboarding_screen/first_onboarding_screen/arrow.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
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
