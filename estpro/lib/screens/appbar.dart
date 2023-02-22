import 'package:estpro/utils/appStyle.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'estPro',
              style: TextStyle(
                color: Styles.toggle,
              ),
            ),
            Column(
              children:  [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 15,
                    color: Styles.toggle,
                  ),
                ),
                Text('Mr Moso', style: TextStyle(color: Styles.toggle,),),
              ],
            ),
          ],
        );
  }
}