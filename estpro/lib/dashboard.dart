import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('estPro'),
            Column(
              children: const [
                Text('Welcome'),
                Text('Mr Moso'),
              ],
            ),
          ],
        ),

      ),
      drawer: SingleChildScrollView(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.only(left: 30,),
                child: Column(
                  children: const [
                    Text('Profile Name'),
                    Text('email Address'),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Cusicons.insert_chart),
                title: const Text('Dashbord'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.account_box),
                title: const Text('Profile'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.account_balance),
                title: const Text('Property'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.filter_none),
                title: const Text('Rent Payment'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.apps),
                title: const Text('Bills Payment'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.backup),
                title: const Text('Payment Evidence'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.notifications),
                title: const Text('Notification'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.explore),
                title: const Text('Agreement'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.mail_outline),
                title: const Text('Contact Support'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Cusicons.exit_to_app),
                title: const Text('Log Out'),
                onTap: () {
                  // do something
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Text('Profile Name', style: TextStyle(fontSize: 20,),),
              const Text('USERID: MOSOID'),
              Row(
                children: const [
                  Icon(Icons.home),
                  Text('Welcome to the (Side Navigation Bar)'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}