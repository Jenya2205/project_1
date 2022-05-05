import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class StateDeliveryAddress extends ChangeNotifier {
  final List<Widget> _userDeliveryAddresses = [
    Padding(
      padding: EdgeInsets.only(top: 8.0 * DeviceInfo.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w)),
            child: SizedBox(
              width: 327.0 * DeviceInfo.w,
              height: 127.0 * DeviceInfo.w,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                    child: Image.asset(
                      "assets/user_profile_screen/home.png",
                      width: 24.0 * DeviceInfo.w,
                      height: 24.0 * DeviceInfo.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.0 * DeviceInfo.w,
                      bottom: 17.0 * DeviceInfo.w,
                      left: 18.0 * DeviceInfo.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 13, 140, 56),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                        Text(
                          "Al Multaqa Street, Al Wasl, Dubai",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                        Text(
                          "Joe Philips",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                        Text(
                          "+ 123 1234 12345",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 137, 137, 137),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.0 * DeviceInfo.w,
                      color: const Color.fromARGB(255, 173, 173, 173),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    )
  ];
  List<Widget> get userDeliveryAddresses => _userDeliveryAddresses;
}
