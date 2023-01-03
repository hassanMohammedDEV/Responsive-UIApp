import 'package:flutter/material.dart';
import 'package:ui_app/ui/mobile/content/content.dart';
import 'package:ui_app/ui/mobile/nav_drawer/drawer.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      drawer: const MobDrawer(),
      body: const Content(),
    );
  }
}
