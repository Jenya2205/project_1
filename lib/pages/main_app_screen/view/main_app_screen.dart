import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/domain/device_info/device_info.dart';
import 'package:rumbella/pages/main_app_screen/controller/state_main_app_screen.dart';

class MainAppScreen extends StatelessWidget {
  const MainAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color.fromARGB(255, 37, 168, 74),
        currentIndex: context.watch<StateMainAppScreen>().currentIndex,
        onTap: (index) {
          context.read<StateMainAppScreen>().changeCurrentIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w400,
            fontSize: 12.0 * DeviceInfo.w),
        selectedLabelStyle: TextStyle(
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w400,
            fontSize: 14.0 * DeviceInfo.w),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottom_navigation_bar/catalogue.png",
              color: context.watch<StateMainAppScreen>().currentIndex == 0
                  ? context.read<StateMainAppScreen>().activeColor
                  : context.read<StateMainAppScreen>().unactiveColor,
            ),
            label: "Catalogue",
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/bottom_navigation_bar/cart.png",
                color: context.watch<StateMainAppScreen>().currentIndex == 1
                    ? context.read<StateMainAppScreen>().activeColor
                    : context.read<StateMainAppScreen>().unactiveColor,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/bottom_navigation_bar/about.png",
                color: context.watch<StateMainAppScreen>().currentIndex == 2
                    ? context.read<StateMainAppScreen>().activeColor
                    : context.read<StateMainAppScreen>().unactiveColor,
              ),
              label: "About"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/bottom_navigation_bar/user.png",
                color: context.watch<StateMainAppScreen>().currentIndex == 3
                    ? context.read<StateMainAppScreen>().activeColor
                    : context.read<StateMainAppScreen>().unactiveColor,
              ),
              label: "Profile"),
        ],
      ),
      body: DecoratedBox(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 248, 248, 248)),
        child: SizedBox(
          width: 375.0 * DeviceInfo.w,
          height: 812.0 * DeviceInfo.h,
          child: context.read<StateMainAppScreen>().mainAppScreenBodies[
              context.watch<StateMainAppScreen>().currentIndex],
        ),
      ),
    );
  }
}
