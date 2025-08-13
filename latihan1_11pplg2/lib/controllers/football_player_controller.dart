import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/player.dart';

class FootballPlayerController extends GetxController{
  var players = <Player>[
    Player(name: "Fernandes", position: "Midfielder", number: 8, image: "assets/images/Bruno_Fernandes.webp"),
    Player(name: "Sesko", position: "Forward", number: 9, image: "assets/images/sesko.jpeg"),
    Player(name: "Mbeumo", position: "Forward", number: 19, image: "assets/images/mbeumo.webp"),
    Player(name: "Cunha", position: "Forward", number: 12, image: "assets/images/cunha.jpeg"),
    Player(name: "Amad", position: "Winger", number: 11, image: "assets/images/Amad.webp"),
  ].obs;

  void updatePlayer(int index, String newName, String newPosition, int newNumber) {
    players[index].name = newName;
    players[index].position = newPosition;
    players[index].number = newNumber;
    players.refresh();
  }
  } 