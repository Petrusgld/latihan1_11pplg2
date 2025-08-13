import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/components/player.dart';

class EditPlayerController extends GetxController {
  final int index;
  final FootballPlayerController footballPlayerController = Get.find(); 

  late String name;
  late String position;
  late int number;

  EditPlayerController(this.index);

  @override
  void onInit() {
    super.onInit();
    Player player = footballPlayerController.players[index];
    name = player.name;
    position = player.position;
    number = player.number;
  }

  void saveChanges() {
    footballPlayerController.updatePlayer(index, name, position, number);
  }
}
