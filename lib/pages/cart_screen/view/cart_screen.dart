import 'package:flutter/material.dart';
import 'package:rumbella/domain/device_info/device_info.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 61.0 * DeviceInfo.w),
          child: Text(
            "Cart",
            style: TextStyle(
                color: const Color.fromARGB(255, 37, 37, 37),
                fontWeight: FontWeight.w500,
                fontFamily: "SF Pro",
                fontSize: 17.0 * DeviceInfo.w),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 37.0 * DeviceInfo.h),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w)),
            child: SizedBox(
              width: 327.0 * DeviceInfo.w,
              height: 34.0 * DeviceInfo.w,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                child: Text(
                  "Mon Ami Cafe",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 13.0 * DeviceInfo.w),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
