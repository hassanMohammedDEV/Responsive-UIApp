import 'package:flutter/material.dart';
import 'package:ui_app/ui/sales/sales_card.dart';
class SalesScreen extends StatelessWidget {
  final String screenTitle;
  const SalesScreen({Key? key,required this.screenTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(screenTitle),

      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: ()=>{}, child:const Text('add product'),),
          Expanded(child: ListView.builder(
            itemCount: 10,
              itemBuilder: (context,index){
            return const SalesCard();
          }))
        ],
      ),
    );
  }
}
