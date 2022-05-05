import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_payment_method/controller/state_new_payment_method.dart';

class NewPaymentMethodSaveCardButton extends StatelessWidget {
  const NewPaymentMethodSaveCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<StateNewPaymentMethod>().saveCardState
        ? Padding(
            padding: EdgeInsets.only(top: 247.0 * DeviceInfo.h),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {},
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 25, 119, 72),
                        Color.fromARGB(255, 117, 200, 77)
                      ],
                    ),
                  ),
                  child: SizedBox(
                    width: 239.0 * DeviceInfo.w,
                    height: 43.0 * DeviceInfo.w,
                    child: Center(
                      child: Text(
                        "Save card",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0 * DeviceInfo.w),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 247.0 * DeviceInfo.h),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0 * DeviceInfo.w),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    const Color.fromARGB(255, 25, 119, 72).withOpacity(0.5),
                    const Color.fromARGB(255, 117, 200, 77).withOpacity(0.5)
                  ],
                ),
              ),
              child: SizedBox(
                width: 239.0 * DeviceInfo.w,
                height: 43.0 * DeviceInfo.w,
                child: Center(
                  child: Text(
                    "Save card",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
              ),
            ),
          );
  }
}
