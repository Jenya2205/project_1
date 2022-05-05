import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/delivery_addresses/controller/state_delivery_address.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class DeliveryAddressesScreen extends StatelessWidget {
  const DeliveryAddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 59.0 * DeviceInfo.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0 * DeviceInfo.w),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<StateUserProfileScreen>()
                          .onPressedArrowBack(0);
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 37, 37, 37),
                      size: 24.0 * DeviceInfo.w,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 66.0 * DeviceInfo.w),
                child: Text(
                  "Delivery addresses",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.0 * DeviceInfo.h),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<StateUserProfileScreen>().setCurrentBodyIndex(7);
              },
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(11.0 * DeviceInfo.w),
                ),
                child: SizedBox(
                  width: 327.0 * DeviceInfo.w,
                  height: 47.0 * DeviceInfo.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0 * DeviceInfo.w),
                        child: Image.asset(
                          "assets/payment_details/add_plus.png",
                          width: 24.0 * DeviceInfo.w,
                          height: 24.0 * DeviceInfo.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0 * DeviceInfo.w),
                        child: Text(
                          "add new...",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 135, 135, 135),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        context.watch<StateDeliveryAddress>().userDeliveryAddresses.isNotEmpty
            ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0 * DeviceInfo.w),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: context.read<StateDeliveryAddress>().userDeliveryAddresses.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return context
                      .read<StateDeliveryAddress>()
                      .userDeliveryAddresses[index];
                })),
            )
            : Padding(
                padding: EdgeInsets.only(top: 173.0 * DeviceInfo.h),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/order_history/sad.png",
                      width: 80.0 * DeviceInfo.w,
                      height: 80.0 * DeviceInfo.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.0 * DeviceInfo.h),
                      child: Text(
                        "It feels a little empty here.",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 135, 135, 135),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                    Text(
                      "Please add at least one delievery address.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 135, 135, 135),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro",
                          fontSize: 15.0 * DeviceInfo.w),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}
