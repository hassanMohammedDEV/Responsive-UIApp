import 'package:flutter/material.dart';
import 'package:ui_app/ui/home/desktop/content.dart';
import 'package:ui_app/ui/home/desktop/nav_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key,required this.title}) : super(key: key);
  final String title;

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
              child: Placeholder()
          ),
        ],
      ),
    );
  }
}
