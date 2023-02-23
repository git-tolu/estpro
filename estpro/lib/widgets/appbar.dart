import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'estPro',
        
        ),
        Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'Profile Name',
            ),
          ],
        ),
      ],
    );
  }
}
