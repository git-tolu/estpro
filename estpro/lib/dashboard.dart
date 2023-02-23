import 'dart:math';

import 'package:estpro/utils/appStyle.dart';
import 'package:estpro/widgets/appbar.dart';
import 'package:estpro/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'icons/my_flutter_app_icons.dart';

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
        title: const Appbar(),
      ),
      // top bar title end
      // sidenav
      drawer: const Drawer(
        child: Sidebar(),
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
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Profile Name',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('USERID: MOSOID'),
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            Icon(Icons.home),
                            Text(
                              'Welcome to OKO AFOR HOUSE ',
                            
                            ),
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
