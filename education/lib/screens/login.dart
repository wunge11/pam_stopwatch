import 'package:flutter/material.dart';

import 'base_screen.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/land.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context); // Navigasi ke halaman sebelumnya
                },
                child: Icon(Icons.arrow_circle_left),
              ),
            ),
            Center(
              child: Container(
                width: 300.0,
                height: 450.0,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.purple.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Enter Your Username & Password",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.purpleAccent.shade400,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    _usernameField(),
                    SizedBox(height: 20.0),
                    _passwordField(),
                    SizedBox(height: 30.0),
                    _submitButton(context),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Text(
                "Versi 1.0.0", // Ganti dengan versi aplikasi Anda
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        style: TextStyle(color: Colors.black), // Menetapkan warna teks putih
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
            labelText: 'Username',
            hintText: 'Username',
            hintStyle:
            TextStyle(color: Colors.black), // Menetapkan warna teks putih
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.purple.shade300)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                    color: (isLoginSuccess)
                        ? Colors.purple.shade300
                        : Colors.red))),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        style: TextStyle(color: Colors.black), // Menetapkan warna teks putih
        obscureText: true,
        obscuringCharacter: '*',
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Password',
            hintStyle:
            TextStyle(color: Colors.black), // Menetapkan warna teks putih
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.purple.shade300)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                    color: (isLoginSuccess)
                        ? Colors.purple.shade300
                        : Colors.red))),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "Relvio" && password == "1111") {
            setState(() {
              text = "Login Berhasil";
              isLoginSuccess = true;
            });

            // Navigasi ke halaman berikutnya jika login berhasil
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BaseScreen(),
              ),
            );
          } else {
            setState(() {
              text = "Login gagal";
              isLoginSuccess = false;
            });
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(40, 50),
          backgroundColor:
          (isLoginSuccess) ? Colors.black.withOpacity(0.8) : Colors.red,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
