import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/kalkulator.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0
      .obs; // default tab = 0 (Kalkulator dulu yang muncul)

  final pages = [
    CalculatorPage(),
    FootballPlayer(),
    ProfilePage(),
  ];
}

  class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.currentIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Players",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
