import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:js';

import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import '../icons/my_flutter_app_icons.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            // ontap: Property(),
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
    );
  }
}
