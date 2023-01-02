import 'package:flutter/material.dart';

import 'content/content.dart';
import 'nav_drawer/nav_drawer.dart';
import 'sidebar/sidebar.dart';


class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Expanded(
            flex: 1,
              child: NavDrawer(),
          ),
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
