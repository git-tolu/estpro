import 'dart:math';

import 'package:estpro/icons/my_flutter_app_icons.dart';
import 'package:estpro/login_page.dart';
import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
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
              child: const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 15,
                ),
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
                        child: const UserAccountsDrawerHeader(
                          accountName: Text('Flutter Dev'),
                          accountEmail: Text('flutter.dev@example.com'),
                          decoration: BoxDecoration(
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
                          
                          currentAccountPicture: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('F', style: TextStyle(fontSize: 40.0)),
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
                                builder: (context) => const LoginPage()),
                          );
                        },
                      ),
                    ),
                  ],
                );
                // DropdownMenuItem(
                //   child: ListView(
                //     children: [
                //       UserAccountsDrawerHeader(
                //         accountName: const Text('Flutter Dev'),
                //         accountEmail: const Text('flutter.dev@example.com'),
                //         decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             begin: Alignment.topLeft,
                //             end: Alignment.bottomRight,
                //             colors: Styles.bgColor,
                //             stops: const [0.0, 1.0],
                //             tileMode: TileMode.repeated,
                //             transform: const GradientRotation(45 * pi / 180),
                //           ),
                //         ),
                //         currentAccountPicture: const CircleAvatar(
                //           backgroundColor: Colors.white,
                //           child: Text('F', style: TextStyle(fontSize: 40.0)),
                //         ),
                //       ),
                //       const ListTile(
                //         leading: Icon(Cusicons.account_box),
                //         title: Text('Profile'),
                //       ),
                //       const ListTile(
                //         leading: Icon(Icons.settings),
                //         title: Text('Profile'),
                //       ),
                //       ListTile(
                //         leading: const Icon(Cusicons.exit_to_app),
                //         title: const Text('Log Out'),
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const LoginPage()),
                //           );
                //         },
                //       ),
                //     ],
                //   ),
                // );
              },
            ),
            const Text(
              'Profile Name',
            ),
          ],
        ),
      ],
    );
  }
}
