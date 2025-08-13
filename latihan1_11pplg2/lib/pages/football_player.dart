import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController = Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Players"), centerTitle: true),
      body: Container(
        margin : EdgeInsets.all(10),
        child: Obx(()=>ListView.builder(
          itemCount: footballPlayerController.players.length,
          itemBuilder: (context, index) {
              final player = footballPlayerController.players[index];
            return ListTile(
              leading: Image.asset(player.image, width: 50, height: 50),
              title: Text(player.name),
              subtitle: Text("${player.position} • #${player.number}"),
              onTap: () {
                Get.toNamed(AppRoutes.editPlayer, arguments: index);
              },
            );
          },
        )),
      ),
    );
  }
}