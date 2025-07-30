import 'package:flutter/material.dart';
import 'custom_input_widgets.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "login status";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 23,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Welcome Back! Please enter your details",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),

            //image dari resource
            Center(
              child: Container(
                margin:EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/images/images.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),

            CustomTextField(
              controller: txtUsername,
              label: 'Username',
              hint: 'Enter your username',
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

            //button
            Container(
              margin: EdgeInsets.only(top: 7,),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (txtUsername.text == "admin" &&
                      txtPassword.text == "admin") {
                    setState(() {
                      statusLogin = "sukses login";
                    });
                  } else {
                    setState(() {
                      statusLogin = "gagal login";
                    });
                  }
                  print("status " + statusLogin);
                },
                child: Text("Login"),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5,),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
                child: Text(
                  "Belum punya akun? Register",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),

            //Text(statusLogin),
          ],
        ),
      ),
    );
  }
}
