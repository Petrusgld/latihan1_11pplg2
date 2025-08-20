import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_input_widgets.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: controller.txtAngka1,
              label: "Input Angka 1",
              hint: "Number 1",
              isNumber: true,
            ),
            SizedBox(height: 12),
            CustomTextField(
              controller: controller.txtAngka2,
              label: "Input Angka 2",
              hint: "Number 2",
              isNumber: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "+",
                  onPressed: () {
                    controller.tambah();
                  },
                  labelColor: TextStyle(
                    color: Colors.white
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    elevation: 6,
                  ),
                ),
                CustomButton(
                  text: "-",
                  onPressed: () {
                    controller.kurang();
                  },
                  labelColor: TextStyle(
                    color: Colors.white
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    elevation: 6,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "x",
                  onPressed: () {
                    controller.kali();
                  },
                  labelColor: TextStyle(
                    color: Colors.white
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    elevation: 6,
                  ),
                ),

                CustomButton(
                  text: ":",
                  onPressed: () {
                    controller.bagi();
                  },
                  labelColor: TextStyle(
                    color: Colors.white
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    elevation: 6,
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 30),
            Center(
              child: Obx(() {
                return Text(
                  'Result: ${controller.textHasil.value}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                );
              }),
            ),

            Container(
              margin: EdgeInsets.only(top: 7),
              width: double.infinity,
              child: CustomButton(
                text: "Clear",
                onPressed: () {
                  controller.clear();
                },
                labelColor: TextStyle(
                    color: Colors.black
                  ),
                style: ButtonStyle(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
