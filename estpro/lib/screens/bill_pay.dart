import 'package:estpro/utils/appStyle.dart';
import 'package:estpro/widgets/appbar.dart';
import 'package:estpro/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BillPay extends StatefulWidget {
  const BillPay({super.key});

  @override
  State<BillPay> createState() => _BillPayState();
}

class _BillPayState extends State<BillPay> {
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
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            // banner
            Container(
              height: 100,
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
            ),
            // banner end
            const Gap(60),
            // first section
            Container(
              padding: const EdgeInsets.all(10),
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "OKO AFOR HOUSE",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Gap(10),
                      Text(
                        "PROPERTY NAME",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Icon(Icons.check_circle)
                ],
              ),
            ),
            // first section end
            const Gap(40),
            // second section
            const Center(
              child: Column(
                children: [
                  Text(
                    "MY BILLS PAYMENT RECORD",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Gap(10),
                  Text(
                    "No payment record yet!",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            )
            // second section end
          ],
        ),
        // third section end
      ),
    );
  }
}