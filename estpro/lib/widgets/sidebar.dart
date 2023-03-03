import 'package:estpro/dashboard.dart';
import 'package:estpro/login_page.dart';
import 'package:estpro/screens/bill_pay.dart';
import 'package:estpro/screens/property.dart';
import 'package:estpro/screens/rent_payment.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
              child: Text(
                'F',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Cusicons.insert_chart,
              color: Colors.white,
            ),
            title: const Text(
              'Dashbord',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
          ),
          const ListTile(
            leading: Icon(
              Cusicons.account_box,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Cusicons.account_balance,
              color: Colors.white,
            ),
            title: const Text(
              'Property',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Property()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Cusicons.filter_none,
              color: Colors.white,
            ),
            title: const Text(
              'Rent Payment',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RentPayment()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Cusicons.apps,
              color: Colors.white,
            ),
            title: const Text(
              'Bills Payment',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BillPay()),
              );
            },
          ),
          const ListTile(
            leading: Icon(
              Cusicons.backup,
              color: Colors.white,
            ),
            title: Text(
              'Payment Evidence',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Cusicons.notifications,
              color: Colors.white,
            ),
            title: Text(
              'Notification',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Cusicons.explore,
              color: Colors.white,
            ),
            title: Text(
              'Agreement',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Cusicons.mail_outline,
              color: Colors.white,
            ),
            title: Text(
              'Contact Support',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Cusicons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
