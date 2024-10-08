import 'package:flutter/material.dart';
import 'package:ui_app/ui/desktop/home/desktop_home.dart';
import 'package:ui_app/ui/mobile/mobile_home.dart';
import 'package:ui_app/ui/responsive_utils.dart';
import 'package:ui_app/ui/tablet/home/tablet_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const ResponsiveUtils(mobileScreen: MobileHome(),
          tabletScreen: TabletHome(),webScreen: DesktopHome()),
    );
  }
}
