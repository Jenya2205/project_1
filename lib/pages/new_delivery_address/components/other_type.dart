import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_delivery_address/controller/state_new_delivery_address.dart';

class NewDeliveryAddressOtherType extends StatelessWidget{
  const NewDeliveryAddressOtherType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.0 * DeviceInfo.w,
        right: 24.0 * DeviceInfo.w,
        top: 16.0 * DeviceInfo.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Other type",
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 102, 102),
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w400,
                fontSize: 15.0 * DeviceInfo.w),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
            child: TextField(
              onChanged: (value) {
                context.read<StateNewDeliveryAddress>().onChangedOthertype(value);
              },
              decoration: InputDecoration(
                hintText: "Other type",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 173, 173, 173),
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 * DeviceInfo.w
                ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}