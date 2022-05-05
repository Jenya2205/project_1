import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/onboarding_screen/controller/state_onboarding_screen.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color.fromARGB(255, 25, 119, 72),
          Color.fromARGB(255, 117, 200, 77),
        ],
      )),
      child: SizedBox(
        width: 375.0 * DeviceInfo.w,
        height: 812.0 * DeviceInfo.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 346.0 * DeviceInfo.h,
                right: 60.58 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 5.0 * DeviceInfo.w,
                height: 5.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 370.0 * DeviceInfo.h,
                right: 270.58 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 5.0 * DeviceInfo.w,
                height: 5.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 285.0 * DeviceInfo.h,
                right: 334.58 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 7.0 * DeviceInfo.w,
                height: 7.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 196.0 * DeviceInfo.h,
                left: 345.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 9.26 * DeviceInfo.w,
                height: 9.26 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 136.0 * DeviceInfo.h,
                right: 300.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 8.0 * DeviceInfo.w,
                height: 8.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 105.0 * DeviceInfo.h,
                right: 105.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 6.0 * DeviceInfo.w,
                height: 6.0 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 49.0 * DeviceInfo.h,
                left: 30.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 9.26 * DeviceInfo.w,
                height: 9.26 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 32.0 * DeviceInfo.h,
                left: 100.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 4.42 * DeviceInfo.w,
                height: 4.42 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_3.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 37.0 * DeviceInfo.h,
                left: 120.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 134.61 * DeviceInfo.w,
                height: 135.53 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/coffe.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 318.66 * DeviceInfo.h,
                right: 100.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 153.38 * DeviceInfo.w,
                height: 67.42 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/arrow_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 151.0 * DeviceInfo.h,
                left: 40.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 177.66 * DeviceInfo.w,
                height: 60.99 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/arrow_2.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 225.0 * DeviceInfo.h,
                left: 270.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 130.3 * DeviceInfo.w,
                height: 140.3 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_2.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 141.0 * DeviceInfo.h,
                right: 280.89 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 124.38 * DeviceInfo.w,
                height: 134.38 * DeviceInfo.w,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/rec_1.png",
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 197.0 * DeviceInfo.h,
                left: 200.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 186.47 * DeviceInfo.w,
                height: 187.69 * DeviceInfo.h,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/pizza.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 192.0 * DeviceInfo.h,
                right: 224.0 * DeviceInfo.w,
              ),
              child: SizedBox(
                width: 117.0 * DeviceInfo.w,
                height: 62.0 * DeviceInfo.h,
                child: Image.asset(
                  "assets/onboarding_screen/first_onboarding_screen/sushi.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 459.0 * DeviceInfo.h),
              child: Text(
                "Choose products\nfrom catalogue",
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
                      width: 20.0 * DeviceInfo.w,
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
