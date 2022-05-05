import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/order%20history/controller/state_order_history.dart';

class OrderHistoryBody extends StatelessWidget {
  const OrderHistoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<StateOrderHistory>().orderHistoryListLength != 0
        ? const SizedBox()
        : Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 207.0 * DeviceInfo.h),
                child: Image.asset(
                  "assets/order_history/sad.png",
                  width: 80.0 * DeviceInfo.w,
                  height: 80.0 * DeviceInfo.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0 * DeviceInfo.h),
                child: Text(
                  "It feels a little empty here.",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 135, 135, 135),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0 * DeviceInfo.h),
                child: Text(
                  "Fill in the cart and make your first order!",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 135, 135, 135),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0 * DeviceInfo.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 27.0 * DeviceInfo.h),
                child: InkWell(
                  onTap: () {},
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color.fromARGB(255, 25, 119, 72),
                            Color.fromARGB(255, 117, 200, 77)
                          ],
                        )),
                    child: SizedBox(
                      width: 219.0 * DeviceInfo.w,
                      height: 43.0 * DeviceInfo.w,
                      child: Center(
                        child: Text(
                          "Go to catalogue",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                              fontSize: 15.0 * DeviceInfo.w),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
