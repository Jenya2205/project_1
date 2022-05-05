import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_delivery_address/components/address_type.dart';
import 'package:rumbella/pages/new_delivery_address/components/full_address.dart';
import 'package:rumbella/pages/new_delivery_address/components/name.dart';
import 'package:rumbella/pages/new_delivery_address/components/other_type.dart';
import 'package:rumbella/pages/new_delivery_address/components/phone.dart';
import 'package:rumbella/pages/new_delivery_address/components/save_address.dart';
import 'package:rumbella/pages/new_delivery_address/components/surname.dart';
import 'package:rumbella/pages/new_delivery_address/controller/state_new_delivery_address.dart';

class NewDeliveryAddress extends StatelessWidget {
  const NewDeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: 59.0 * DeviceInfo.w, left: 24.0 * DeviceInfo.w),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.read<StateNewDeliveryAddress>().onPressedArrowBack(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24.0 * DeviceInfo.w,
                  color: const Color.fromARGB(255, 37, 37, 37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 57.0 * DeviceInfo.w),
                child: Text(
                  "New delivery address",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro",
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.0 * DeviceInfo.w),
          child: Text(
            "Please fill in all the delievery address information.",
            style: TextStyle(
                color: const Color.fromARGB(255, 37, 37, 37),
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w400,
                fontSize: 15.0 * DeviceInfo.w),
          ),
        ),
        const NewDeliveryAddressAddressType(),
        context.watch<StateNewDeliveryAddress>().selectedType == "Other"
            ? const NewDeliveryAddressOtherType()
            : const SizedBox(),
        const NewDeliveryAddressFullAddress(),
        const NewDeliveryAddressName(),
        const NewDeleveryAddressSurname(),
        const NewDeliveryaddressPhone(),
        const NewDeliveryAddressSaveAddress()
      ],
    );
  }
}
