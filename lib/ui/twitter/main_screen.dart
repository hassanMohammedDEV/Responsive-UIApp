import 'package:flutter/material.dart';

import 'twittes_card.dart';
class MainScreen extends StatelessWidget {
  final String title;
  const MainScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:const Text('main screen'),
        ),
        body: ListView.builder(
          itemCount: 15,
            itemBuilder: (context,index){
          return const TwittesCrd();
        }),
      ),
    );
  }
}
