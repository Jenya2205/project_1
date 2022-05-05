import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_delivery_address/controller/state_new_delivery_address.dart';

class NewDeliveryAddressAddressType extends StatelessWidget {
  const NewDeliveryAddressAddressType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 42.0 * DeviceInfo.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Address type",
                style: TextStyle(
                    color: const Color.fromARGB(255, 102, 102, 102),
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 * DeviceInfo.w),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: context
                      .read<StateNewDeliveryAddress>()
                      .onPressedSelectType,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                        color: Colors.white),
                    child: SizedBox(
                      width: 327.0 * DeviceInfo.w,
                      height: 48.0 * DeviceInfo.w,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0 * DeviceInfo.w),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 157.5 * DeviceInfo.w,
                              child: Row(
                                children: [
                                  Text(
                                    context
                                            .watch<StateNewDeliveryAddress>()
                                            .selectedType
                                            .isNotEmpty
                                        ? context
                                            .read<StateNewDeliveryAddress>()
                                            .selectedType
                                        : "Select type",
                                    style: TextStyle(
                                        color: context
                                                .watch<StateNewDeliveryAddress>()
                                                .selectedType
                                                .isNotEmpty
                                            ? const Color.fromARGB(255, 37, 37, 37)
                                            : const Color.fromARGB(
                                                255, 173, 173, 173),
                                        fontFamily: "SF Pro",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0 * DeviceInfo.w),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 157.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 12.0 * DeviceInfo.w),
                                    child: Image.asset(
                                      "assets/new_delivery_address/arrow.png",
                                      width: 24.0 * DeviceInfo.w,
                                      height: 24.0 * DeviceInfo.w,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          context.watch<StateNewDeliveryAddress>().selectTypePressed
              ? DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                  ),
                  child: SizedBox(
                    width: 327.0 * DeviceInfo.w,
                    height: 107.0 * DeviceInfo.w,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.0 * DeviceInfo.w),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 139.5 * DeviceInfo.w,
                                child: Row(
                                  children: [
                                    Text(
                                      context
                                          .watch<StateNewDeliveryAddress>()
                                          .selectedType,
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 37, 37, 37),
                                          fontFamily: "SF Pro",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.0 * DeviceInfo.w),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 139.5 * DeviceInfo.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/new_delivery_address/arrow_up.png",
                                      width: 24.0 * DeviceInfo.w,
                                      height: 24.0 * DeviceInfo.w,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22.0 * DeviceInfo.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: context
                                      .read<StateNewDeliveryAddress>()
                                      .onPressedHomeType,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: context
                                                .watch<
                                                    StateNewDeliveryAddress>()
                                                .homeTypeState
                                            ? context
                                                .read<StateNewDeliveryAddress>()
                                                .selectedTypeColor
                                            : context
                                                .read<StateNewDeliveryAddress>()
                                                .defaultTypeColor,
                                        borderRadius: BorderRadius.circular(
                                            7.0 * DeviceInfo.w)),
                                    child: SizedBox(
                                      width: 87.0 * DeviceInfo.w,
                                      height: 34.0 * DeviceInfo.w,
                                      child: Center(
                                        child: Text(
                                          "Home",
                                          style: TextStyle(
                                              color: context
                                                      .watch<
                                                          StateNewDeliveryAddress>()
                                                      .homeTypeState
                                                  ? context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .selectedTextTypeColor
                                                  : context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .defaultTextTypeColor,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SF Pro",
                                              fontSize: 15.0 * DeviceInfo.w),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 11.0 * DeviceInfo.w),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: context
                                        .read<StateNewDeliveryAddress>()
                                        .onPressedOfficeType,
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color:
                                              context
                                                      .watch<
                                                          StateNewDeliveryAddress>()
                                                      .officeTypeState
                                                  ? context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .selectedTypeColor
                                                  : context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .defaultTypeColor,
                                          borderRadius: BorderRadius.circular(
                                              7.0 * DeviceInfo.w)),
                                      child: SizedBox(
                                        width: 87.0 * DeviceInfo.w,
                                        height: 34.0 * DeviceInfo.w,
                                        child: Center(
                                          child: Text(
                                            "Office",
                                            style: TextStyle(
                                                color: context
                                                        .watch<
                                                            StateNewDeliveryAddress>()
                                                        .officeTypeState
                                                    ? context
                                                        .read<
                                                            StateNewDeliveryAddress>()
                                                        .selectedTextTypeColor
                                                    : context
                                                        .read<
                                                            StateNewDeliveryAddress>()
                                                        .defaultTextTypeColor,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "SF Pro",
                                                fontSize: 15.0 * DeviceInfo.w),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: context
                                      .read<StateNewDeliveryAddress>()
                                      .onPressedOtherType,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: context
                                                .watch<
                                                    StateNewDeliveryAddress>()
                                                .otherTypeState
                                            ? context
                                                .read<StateNewDeliveryAddress>()
                                                .selectedTypeColor
                                            : context
                                                .read<StateNewDeliveryAddress>()
                                                .defaultTypeColor,
                                        borderRadius: BorderRadius.circular(
                                            7.0 * DeviceInfo.w)),
                                    child: SizedBox(
                                      width: 87.0 * DeviceInfo.w,
                                      height: 34.0 * DeviceInfo.w,
                                      child: Center(
                                        child: Text(
                                          "Other",
                                          style: TextStyle(
                                              color: context
                                                      .watch<
                                                          StateNewDeliveryAddress>()
                                                      .otherTypeState
                                                  ? context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .selectedTextTypeColor
                                                  : context
                                                      .read<
                                                          StateNewDeliveryAddress>()
                                                      .defaultTextTypeColor,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SF Pro",
                                              fontSize: 15.0 * DeviceInfo.w),
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
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
