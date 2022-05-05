import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/new_payment_method/components/add_card_details.dart';
import 'package:rumbella/pages/new_payment_method/components/save_card.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class NewPaymentMethod extends StatelessWidget {
  const NewPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 24.0 * DeviceInfo.w, top: 59.0 * DeviceInfo.h),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.read<StateUserProfileScreen>().setCurrentBodyIndex(2);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24.0 * DeviceInfo.w,
                  color: const Color.fromARGB(255, 37, 37, 37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 59.0 * DeviceInfo.w),
                child: Text(
                  "New payment method",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 37, 37, 37),
                      fontFamily: "SF Pro",
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0 * DeviceInfo.w),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.0 * DeviceInfo.h),
          child: Text(
            "Please fill in all the payment information.",
            style: TextStyle(
              color: const Color.fromARGB(255, 37, 37, 37),
              fontWeight: FontWeight.w400,
              fontFamily: "SF Pro",
              fontSize: 15.0 * DeviceInfo.w
            ),
          ),
        ),
        const NewPaymentMethodAddCardDetails(),
        const NewPaymentMethodSaveCardButton()
      ],
    );
  }
}
