import 'dart:math';

import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'my_flutter_app_icons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // top bar title
        // backgroundColor: Styles.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'estPro',
              style: TextStyle(
                color: Styles.white,
              ),
            ),
            Column(
              children:  [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 15,
                    color: Styles.white,
                  ),
                ),
                Text('Mr Moso', style: TextStyle(color: Styles.white,),),
              ],
            ),
          ],
        ),
      ),
      // top bar title end
      // sidenav
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: Styles.bgColor,
              stops: const [0.0, 1.0],
              tileMode: TileMode.repeated,
              transform: const GradientRotation(45 * pi / 180),
            ),
          ),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text('Flutter Dev'),
                accountEmail: const Text('flutter.dev@example.com'),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: Styles.bgColor,
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.repeated,
                    transform: const GradientRotation(45 * pi / 180),
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('F', style: TextStyle(fontSize: 40.0)),
                ),
              ),
              const ListTile(
                leading: Icon(Cusicons.insert_chart),
                title: Text('Dashbord'),
              ),
              const ListTile(
                leading: Icon(Cusicons.account_box),
                title: Text('Profile'),
              ),
              const ListTile(
                leading: Icon(Cusicons.account_balance),
                title: Text('Property'),
              ),
              const ListTile(
                leading: Icon(Cusicons.filter_none),
                title: Text('Rent Payment'),
              ),
              const ListTile(
                leading: Icon(Cusicons.apps),
                title: Text('Bills Payment'),
              ),
              const ListTile(
                leading: Icon(Cusicons.backup),
                title: Text('Payment Evidence'),
              ),
              const ListTile(
                leading: Icon(Cusicons.notifications),
                title: Text('Notification'),
              ),
              const ListTile(
                leading: Icon(Cusicons.explore),
                title: Text('Agreement'),
              ),
              const ListTile(
                leading: Icon(Cusicons.mail_outline),
                title: Text('Contact Support'),
              ),
              const ListTile(
                leading: Icon(Cusicons.exit_to_app),
                title: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
      // sidenav end
      body: Column(
        children: [
          // first section
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: Styles.bgColor,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            // color: Colors.blue,
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [Color(0xFF068540), Color(0xFFFFF7F00)],
            //     stops: [0.0, 1.0],
            //     tileMode: TileMode.repeated,
            //     transform: GradientRotation(45),
            //   ),
            // ),
            padding: const EdgeInsets.all(60),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Profile Name',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('USERID: MOSOID'),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          children: const [
                            Icon(Icons.home),
                            Text('Welcome to the (Side Navigation Bar)'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // first section end
          const Gap(40),
          // second section
          Container(
            margin: const EdgeInsets.all(50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    color: Styles.shade,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "UNPAID RENT INVOICE . . .",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    alignment: Alignment.bottomLeft,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: Styles.bgColor,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "NO UNPAID RENT INVOICE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    alignment: Alignment.bottomLeft,
                    color: Styles.shade,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "UNPAID UTILITY BILLS . . .",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    alignment: Alignment.bottomLeft,
                    // color: Colors.grey,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "NILL!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(10),
                ],
              ),
            ),
          ),
          // second section end
        ],
      ),
    );
  }
}
