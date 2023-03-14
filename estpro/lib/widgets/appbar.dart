import 'dart:math';

import 'package:estpro/icons/my_flutter_app_icons.dart';
import 'package:estpro/login_page.dart';
import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Appbar extends StatefulWidget {
  Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  void initState() {
    super.initState();
    _loadDataFromSession();
  }

  String email = '';
  String userName = '';
  void _loadDataFromSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String emailinit = prefs.getString('email') ?? '';
    String userNameint = prefs.getString('user_name') ?? '';
    setState(() {
      email = emailinit;
      userName = userNameint;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/logo-icon.png",
          width: 150,
        ),
        Column(
          children: [
            InkWell(
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    userName.toUpperCase(),
                  ),
                ],
              ),
              onTap: () {
                showMenu(
                  context: context,
                  position: const RelativeRect.fromLTRB(1000, 100, 0, 0),
                  items: [
                    PopupMenuItem(
                      child: Container(
                        // padding: EdgeInsets.only(
                        //   left: 40,
                        // ),
                        child:  UserAccountsDrawerHeader(
                          accountName: Text(
                            userName.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          accountEmail: Text(
                            email.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          decoration: const BoxDecoration(
                            // gradient: LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.bottomRight,
                            //   colors: Styles.bgColor,
                            //   stops: const [0.0, 1.0],
                            //   tileMode: TileMode.repeated,
                            //   transform: const GradientRotation(45 * pi / 180),
                            // ),
                            color: Colors.transparent,
                          ),
                          currentAccountPicture:  CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Text(
                              userName[0].toUpperCase(),
                              style: const TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text('Profile'),
                        leading: Icon(Cusicons.account_box),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text('Change Password'),
                        leading: Icon(Icons.settings),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        title: const Text('Log Out'),
                        leading: const Icon(Cusicons.exit_to_app),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
