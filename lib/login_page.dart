import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          // Wrap Column in Center widget to center it
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                    width: 50.0, height: 60.0, "assets/images/logo.svg"),
                Container(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                    print(email);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Email")),
                ),
                const SizedBox(height: 16.0), // Spacing between fields
                TextField(
                  onChanged: (value) {
                    password = value;
                    print(password);
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Password")),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (email == "dilson.a.a.sevene@gmail.com" &&
                        password == "password") {
                      Navigator.of(context).pushReplacementNamed("/home");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 159, 236, 162)),
                  ),
                  child: const Text("Enter"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
