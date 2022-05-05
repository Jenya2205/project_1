import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_payment_method/controller/state_new_payment_method.dart';

class NewPaymentMethodAddCardDetails extends StatelessWidget {
  const NewPaymentMethodAddCardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 42.0 * DeviceInfo.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/new_payment_method/card.png",
            width: 327.0 * DeviceInfo.w,
            height: 199.0 * DeviceInfo.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 24.0 * DeviceInfo.h,
              left: 42.0 * DeviceInfo.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card number",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.0 * DeviceInfo.h),
                  child: SizedBox(
                    width: 292.0 * DeviceInfo.w,
                    height: 40.0 * DeviceInfo.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                      child: TextField(
                        onChanged: (value) {
                          context
                              .read<StateNewPaymentMethod>()
                              .changedCardNumber(value);
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        enableInteractiveSelection: false,
                        maxLength: 19,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro",
                            fontSize: 15.0 * DeviceInfo.w),
                        decoration: InputDecoration(
                            counterText: "",
                            hintText: "**** **** **** ****",
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                fontFamily: "SF Pro",
                                fontSize: 15.0 * DeviceInfo.w),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.2),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0 * DeviceInfo.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Due date",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SF Pro",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0 * DeviceInfo.w),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.0 * DeviceInfo.h),
                            child: SizedBox(
                              width: 140.0 * DeviceInfo.w,
                              height: 40.0 * DeviceInfo.w,
                              child: TextField(
                                cursorColor: Colors.white,
                                enableInteractiveSelection: false,
                                maxLength: 5,
                                onChanged: (value) {
                                  context
                                      .read<StateNewPaymentMethod>()
                                      .changedDueDate(value);
                                },
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "SF Pro",
                                    fontSize: 15.0 * DeviceInfo.w),
                                decoration: InputDecoration(
                                    counterText: "",
                                    hintText: "MM/YY",
                                    hintStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "SF Pro",
                                        fontSize: 15.0 * DeviceInfo.w),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.2),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.0 * DeviceInfo.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVV/CVC",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "SF Pro",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0 * DeviceInfo.w),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.0 * DeviceInfo.h),
                              child: SizedBox(
                                width: 140.0 * DeviceInfo.w,
                                height: 40.0 * DeviceInfo.w,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(8.0 * DeviceInfo.w),
                                  child: TextField(
                                    cursorColor: Colors.white,
                                    enableInteractiveSelection: false,
                                    maxLength: 3,
                                    maxLines: 1,
                                    onChanged: (value) {
                                      context
                                          .read<StateNewPaymentMethod>()
                                          .changedCVV(value);
                                    },
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "SF Pro",
                                        fontSize: 15.0 * DeviceInfo.w),
                                    decoration: InputDecoration(
                                        counterText: "",
                                        hintText: "3 digits",
                                        hintStyle: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "SF Pro",
                                            fontSize: 15.0 * DeviceInfo.w),
                                        filled: true,
                                        fillColor:
                                            Colors.white.withOpacity(0.2),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
