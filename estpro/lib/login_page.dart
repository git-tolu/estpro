import 'dart:convert';
// import 'dart:js';

import 'package:estpro/dashboard.dart';
import 'package:estpro/test_login.dart';
import 'package:estpro/utils/appLayout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  // void _saveNameToSession() {}

  // Future<void> refreshPage() async {
  //   await Future.delayed(const Duration(seconds: 1));
  // }

  Future<void> _loginProcessing() async {
    String url = 'http://192.168.79.137/mosobolajeMobileApi/auth/login.php';
    final http.Response response = await http.post(
      Uri.parse(url),
      body: {
        'username': usernameController.text,
        'password': passwordController.text
      },
    );
    final Map<String, dynamic> responseData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (responseData['status'] == 200) {
        String name = usernameController.text.trim();
        prefs.setString('user_name', name);
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      } else {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Warning"),
            content: responseData['login'],
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ok'),
              )
            ],
          ),
        );
      }
    } else {
      throw Exception("Failed to authenticate user");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/city2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: AppLayout.getScreenHeight() / 1 / 4,
                ),
                alignment: Alignment.center,
                child: const Image(
                    image: AssetImage("assets/images/logo-icon.png")),
              ),
              Gap(AppLayout.GetHeight(10)),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: 'User Name',
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: 'Password',
                      fillColor: Colors.white70),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amber.shade800),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text('SIGN IN'),
                  onPressed: () {
                    _loginProcessing();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Dashboard()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // ],
      // ),
    );
  }
}
