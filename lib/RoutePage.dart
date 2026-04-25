import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/for%20the%20view/nav.controller.dart';
import 'package:flutter_application_1/pageTest_three.dart';
import 'package:flutter_application_1/pageTest_two.dart';
import 'package:flutter_application_1/views/HomePages/homePage.dart';
import 'package:flutter_application_1/views/reservation%20process/reservations.dart';
import 'package:flutter_application_1/views/settings/profile.dart';
import 'package:get/get.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController controller = Get.put(NavController());

    final List<Widget> pages = [
      Homepage(),
      Reservations(),
      PagetestTwo(),
      Profile(),
      
      
      // BalanceScreen(),
      // ReservationsScreen(),
      // SettingsScreen(),
    ];

    return Obx(
      () => Scaffold(
        extendBody: true,
        body: pages[controller.selectedIndex.value],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(left: 25, right: 18, bottom: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF2E2E2E), // Dark background
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: controller.selectedIndex.value,
              onTap: controller.navigation,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined, size: 28, color: Colors.white),
                  activeIcon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1582DF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.home_outlined, color: Colors.white, size: 28),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.calendar_today_outlined, size: 28, color: Colors.white),
                  activeIcon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1582DF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.calendar_today_outlined, color: Colors.white, size: 28),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite_border_outlined, size: 28, color: Colors.white),
                  activeIcon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1582DF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.favorite_border_outlined, color: Colors.white, size: 28),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings_outlined, size: 28, color: Colors.white),
                  activeIcon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1582DF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.settings_outlined, color: Colors.white, size: 28),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}