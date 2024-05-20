import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:my_travel_app/pages/planned_trips.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
            TextStyle(
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          )),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            backgroundColor: isDarkMode ? Colors.black : Colors.white,
            onDestinationSelected: (index) => {
              controller.selectedIndex.value = index,
            },
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Iconsax.airplane,
                    color: isDarkMode ? Colors.grey : Colors.black,
                    size: 30.0,
                  ),
                  label: 'Current Trip'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.add_circle,
                    color: isDarkMode ? Colors.grey : Colors.black,
                    size: 30.0,
                  ),
                  label: 'Planned Trips'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.profile_circle,
                    color: isDarkMode ? Colors.grey : Colors.black,
                    size: 30.0,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const PlannedTripsPage(),
    Container(color: Colors.orange),
    Container(color: Colors.yellow),
  ];
}
