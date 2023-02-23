import 'package:estpro/utils/appStyle.dart';
import 'package:estpro/widgets/appbar.dart';
import 'package:estpro/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
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
                // gradient: LinearGradient(
                //   colors: Styles.bgColor,
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
                image: const DecorationImage(
                  image: AssetImage(
                      "assets/userImages/mg-cthu--1h_NN3nqzI-unsplash.jpg"),
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
                        "2 MOSOBALAJE STREET, AGUNMO, SAMOJE, OKO AFOR",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Gap(10),
                      Text(
                        "PROPERTY ADDRESS",
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
            // second section end
            const Gap(40),
            // third section
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
                        "OKO AFOR HOUSE AT BADAGRY",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Gap(10),
                      Text(
                        "DESCRIPTION",
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
          ],
        ),
        // third section end
      ),
    );
  }
}
