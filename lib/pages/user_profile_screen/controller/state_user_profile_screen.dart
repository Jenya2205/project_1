import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/dashboard_screen/view/dashboard_screen.dart';
import 'package:rumbella/pages/delivery_addresses/controller/state_delivery_address.dart';
import 'package:rumbella/pages/delivery_addresses/view/devilery_addresses.dart';
import 'package:rumbella/pages/new_delivery_address/controller/state_new_delivery_address.dart';
import 'package:rumbella/pages/new_delivery_address/view/new_delivery_address.dart';
import 'package:rumbella/pages/new_payment_method/controller/state_new_payment_method.dart';
import 'package:rumbella/pages/new_payment_method/view/new_payment_method.dart';
import 'package:rumbella/pages/order%20history/controller/state_order_history.dart';
import 'package:rumbella/pages/order%20history/view/order_history_screen.dart';
import 'package:rumbella/pages/payment_details_screen/controller/state_payment_details.dart';
import 'package:rumbella/pages/payment_details_screen/view/payment_details_screen.dart';
import 'package:rumbella/pages/profile_info_screen.dart/controller/state_profile_info_screen.dart';
import 'package:rumbella/pages/profile_info_screen.dart/view/profile_info_screen.dart';
import 'package:rumbella/pages/user_profile_screen/components/user_profile_screen_body.dart';

class StateUserProfileScreen extends ChangeNotifier {
  bool _notificationsState = true;
  bool get notificationsState => _notificationsState;

  _changedNotificationsState(bool value) {
    _notificationsState = !_notificationsState;
    notifyListeners();
  }

  get changedNotifications => _changedNotificationsState;

  _onPressedLogOut(BuildContext context) {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 27.0 * DeviceInfo.h),
                  child: Text(
                    "A you sure want to log out?",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        fontWeight: FontWeight.w400,
                        fontFamily: "SF Pro",
                        fontSize: 15.0 * DeviceInfo.w),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30.0 * DeviceInfo.h,
                    bottom: 32.0 * DeviceInfo.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(8.0 * DeviceInfo.w),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 210, 210, 210),
                                  width: 1.0 * DeviceInfo.w)),
                          child: SizedBox(
                            width: 105.0 * DeviceInfo.w,
                            height: 43.0 * DeviceInfo.w,
                            child: Center(
                              child: Text(
                                "Stay",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 37, 37, 37),
                                    fontFamily: "SF Pro",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0 * DeviceInfo.w),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0 * DeviceInfo.w),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("log_out");
                            },
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(8.0 * DeviceInfo.w),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 219, 38, 38),
                                    width: 1.0 * DeviceInfo.w),
                              ),
                              child: SizedBox(
                                width: 105.0 * DeviceInfo.w,
                                height: 43.0 * DeviceInfo.w,
                                child: Center(
                                  child: Text(
                                    "Log out",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 219, 38, 38),
                                        fontFamily: "SF Pro",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0 * DeviceInfo.w),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  get onPressedLogOut => _onPressedLogOut;

  int _currentBodyindex = 0;
  int get currentBodyIndex => _currentBodyindex;
  setCurrentBodyIndex(int index) {
    _currentBodyindex = index;
    notifyListeners();
  }

  final List<Widget> _userProfileScreenBodies = [
    const UserProfileScreenBody(),
    ChangeNotifierProvider(
      create: (_) => StateProfileinfoScreen(),
      child: const ProfileInfoScreen(),
    ),
    ChangeNotifierProvider(
      create: (_) => StatePaymentDetails(),
      child: const PaymentDetailsScreen(),
    ),
    ChangeNotifierProvider(
      create: (_) => StateDeliveryAddress(),
      child: const DeliveryAddressesScreen(),
    ),
    ChangeNotifierProvider(
      create: (_) => StateOrderHistory(),
      child: const OrderHistoryScreen(),
    ),
    const DashboardScreen(),
    ChangeNotifierProvider(
      create: (_) => StateNewPaymentMethod(),
      child: const NewPaymentMethod(),
    ),
    ChangeNotifierProvider(
      create: (_) => StateNewDeliveryAddress(),
      child: const NewDeliveryAddress(),
    )
  ];
  List<Widget> get userProfileScreenBodies => _userProfileScreenBodies;

  _onPressedArrowBack(int bodyindex) {
    _currentBodyindex = bodyindex;
    notifyListeners();
  }

  get onPressedArrowBack => _onPressedArrowBack;
}
