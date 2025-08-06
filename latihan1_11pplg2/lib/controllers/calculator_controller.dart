import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka1 + angka2;
    print("hasil jumlah" + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka1 - angka2;
    print("hasil kurang" + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void kali() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka1 * angka2;
    print("hasil kali" + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void bagi() {
    double angka1 = double.parse(txtAngka1.text);
    double angka2 = double.parse(txtAngka2.text);

    double hasilJumlah = angka1 / angka2;
    print("hasil bagi" + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    textHasil.value = '';
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
