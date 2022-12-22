import 'package:flutter/material.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('21 #'),
                          SizedBox(width: 5),
                          Text('زبادي الهناء')
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text('كرتون'),
                    ),
                  ],
                ),),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('الكمية'),
                    Text('5'),
                  ],
                ),),
                Expanded(child: Column(
                  children: const [
                    Text('السعر'),
                    Text('100'),
                  ],
                ),),
                Expanded(child: Column(
                  children: const [
                    Text('الإجمالي'),
                    Text('500'),
                  ],
                ),),
                 Expanded(child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    InkWell(child: Icon(Icons.keyboard_arrow_up),),
                  ],
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
