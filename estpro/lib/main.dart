import 'package:estpro/login_page.dart';
import 'package:estpro/test_login.dart';
import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Styles.white,
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Styles.white,
          titleTextStyle: const TextStyle(color: Colors.black),
          iconTheme: IconThemeData(
            color: Styles.black,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      // darkTheme: ThemeData.dark(), // standard dark theme
      // themeMode: ThemeMode.system, // device controls theme

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> refreshPage() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshPage,
      // child: const LoginPage(),
      child: LoginForm(),
    );
  }
}
