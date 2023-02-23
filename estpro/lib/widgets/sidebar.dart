import 'package:estpro/dashboard.dart';
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
              child: Text('F', style: TextStyle(fontSize: 40.0)),
            ),
          ),
          ListTile(
            leading: const Icon(Cusicons.insert_chart),
            title: const Text('Dashbord'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Cusicons.account_box),
            title: Text('Profile'),
          ),
          ListTile(
            leading: const Icon(Cusicons.account_balance),
            title: const Text('Property'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Property()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Cusicons.filter_none),
            title: const Text('Rent Payment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RentPayment()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Cusicons.apps),
            title: const Text('Bills Payment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BillPay()),
              );
            },
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
