import 'package:flutter/material.dart';
import 'package:ui_app/ui/mobile/content/content.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Content(),
    );
  }
}
