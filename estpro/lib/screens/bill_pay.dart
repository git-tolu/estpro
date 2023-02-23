import 'package:estpro/utils/appLayout.dart';
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
              height: AppLayout.GetHeight(200),
              decoration: BoxDecoration(
              // gradient: LinearGradient(
                //   colors: Styles.bgColor,
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
                image: const DecorationImage(
                          fit: BoxFit.cover,

                  image: AssetImage(
                      "assets/userImages/mg-cthu--1h_NN3nqzI-unsplash.jpg", ),
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
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Gap(10),
                      Text(
                        "PROPERTY NAME",
                        style: TextStyle(
                          fontSize: 15,
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
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Gap(10),
                  Text(
                    "No payment record yet!",
                    style: TextStyle(
                      fontSize: 15,
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
