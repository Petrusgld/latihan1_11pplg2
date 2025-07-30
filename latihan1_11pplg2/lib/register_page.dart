import 'package:flutter/material.dart';
import 'custom_input_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //String statusRegister= "Register status";
  TextEditingController txtName = TextEditingController();
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lets Get Started",
              style: TextStyle(
                fontSize: 23,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Please Fill Your Information",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,),
              child: CustomTextField(
                controller: txtName,
                label: 'Name',
                hint: 'Enter your name',
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,),
              child: CustomTextField(
                controller: txtUsername,
                label: 'Username',
                hint: 'Enter your username',
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,),
              child: CustomTextField(
                controller: txtPassword,
                label: 'Password',
                hint: 'Enter your password',
                isPassword: true,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,),
              child: GenderDropdown(
                selectedGender: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,),
              child: DatePickerField(controller: _dateController)
              ),

            //button  
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print("=== Data yang Dimasukkan ===");
                  print("Name         : ${txtName.text}");
                  print("Username     : ${txtUsername.text}");
                  print("Password     : ${txtPassword.text}");
                  print("Jenis Kelamin: $_selectedGender");
                  print("Tanggal Lahir: ${_dateController.text}");
                },
                child: Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
