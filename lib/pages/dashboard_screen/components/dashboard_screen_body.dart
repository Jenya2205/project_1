import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class DashboardScreenBody extends StatelessWidget {
  const DashboardScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 251.0 * DeviceInfo.h),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/dashboard_screen/money.png",
                fit: BoxFit.fill,
                width: 58.0 * DeviceInfo.w,
                height: 100.33 * DeviceInfo.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.0 * DeviceInfo.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total money saved",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro",
                          fontSize: 15.0 * DeviceInfo.w),
                    ),
                    Text(
                      "AED 478",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 13, 140, 56),
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro",
                        fontSize: 45.0 * DeviceInfo.w
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0 * DeviceInfo.h),
            child: Row(
              children: [
                Image.asset(
                  "assets/dashboard_screen/tree.png",
                  fit: BoxFit.fill,
                  width: 58.0 * DeviceInfo.w,
                  height: 101.5 * DeviceInfo.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.0 * DeviceInfo.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total tree saved",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            "44",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 13, 140, 56),
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro",
                              fontSize: 45.0 * DeviceInfo.w
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0 * DeviceInfo.w),
                            child: Text(
                              "equils to AED 9248",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 135, 135, 135),
                                fontWeight: FontWeight.w500,
                                fontFamily: "SF Pro",
                                fontSize: 15.0 * DeviceInfo.w
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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
