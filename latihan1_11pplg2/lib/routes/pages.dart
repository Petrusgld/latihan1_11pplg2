import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:latihan1_11pplg2/bottom_nav.dart';
import 'package:latihan1_11pplg2/pages/edit_player.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/kalkulator.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';


class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.bottomNav, page: () => BottomNav(),),
    GetPage(name: AppRoutes.kalkulator, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.footballPlayer, page: ()=> FootballPlayer()),
    GetPage(name: AppRoutes.editPlayer, page: ()=> EditPlayerPage()),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage()),
  ];
}