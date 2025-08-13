import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/edit_player.dart';

class EditPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments; // ambil index dari arguments
    final EditPlayerController controller = Get.put(EditPlayerController(index));

    final nameController = TextEditingController(text: controller.name);
    final positionController = TextEditingController(text: controller.position);
    final numberController = TextEditingController(text: controller.number.toString());

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
              onChanged: (value) => controller.name = value,
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: "Position"),
              onChanged: (value) => controller.position = value,
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: "Number"),
              keyboardType: TextInputType.number,
              onChanged: (value) => controller.number = int.tryParse(value) ?? controller.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.saveChanges();
                Get.back();
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
