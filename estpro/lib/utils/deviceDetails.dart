import 'package:device_info/device_info.dart';
import 'package:estpro/widgets/appbar.dart';
import 'package:estpro/widgets/sidebar.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   void initState() {
//     super.initState();
//     initPrefs();
//   }

//   void initPrefs() async {
//     if (Platform.isAndroid) {
//       // Get Android device information
//       AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
//       String deviceModel = androidInfo.model;
//       String osVersion = androidInfo.version.release;
//       String deviceId = androidInfo.androidId;
//     } else if (Platform.isIOS) {
//       // Get iOS device information
//       IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
//       String deviceModel = iosInfo.model;
//       String osVersion = iosInfo.systemVersion;
//       String deviceId = iosInfo.identifierForVendor;
//     }
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // top bar title
//         title: Appbar(),
//       ),
//       // top bar title end
//       // sidenav
//       drawer: const Drawer(
//         child: Sidebar(),
//       ),
//       body: Column(
//         children: [
//           Text('deviceModel: $deviceModel'),
//           Text('osVersion: $osVersion'),
//           Text('deviceId: $deviceId'),
//         ],
//       ),
//     );
//   }
// }
