import 'package:flutter/material.dart';
import 'package:ui_app/ui/desktop/home/sidebar/sidebar.dart';
import 'package:ui_app/ui/mobile/nav_drawer/drawer.dart';
import 'package:ui_app/ui/tablet/home/content/content.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      drawer: const MobDrawer(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          //TODO content
          Expanded(
              flex: 4,
              child: Content()
          ),
          //TODO options
          Expanded(
              flex: 2,
              child: Sidebar()
          ),
        ],
      ),
    );
  }
}
