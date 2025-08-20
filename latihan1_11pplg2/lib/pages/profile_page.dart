import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/components/custom_input_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            const SizedBox(height: 16),

            // Nama
            const CustomText(
              text: "Emmanuel Michael",
              size: 22,
              color: Colors.black,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: 4),

            // Email
            const CustomText(
              text: "Emmanuel@gmail.com",
              size: 16,
              color: Colors.grey,
              weight: FontWeight.normal,
            ),

            const SizedBox(height: 20),

            // Info lain
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.purple),
                        SizedBox(width: 10),
                        CustomText(
                          text: "Kelas : 11 PPLG 2",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.class_rounded, color: Colors.purple),
                        SizedBox(width: 10),
                        CustomText(
                          text: "Absen : 14",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.cake, color: Colors.orange),
                        SizedBox(width: 10),
                        CustomText(
                          text: "Tanggal Lahir: 4 Juli 2009",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
