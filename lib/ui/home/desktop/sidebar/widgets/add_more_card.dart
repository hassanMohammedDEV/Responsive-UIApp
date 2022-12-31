import 'package:flutter/material.dart';
class AddMoreCard extends StatelessWidget {
  const AddMoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(235, 242, 252, 1),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add,size: 5,color: Colors.blueAccent),
            SizedBox(width: 3),
            Text('Add more',style: TextStyle(color: Colors.blueAccent,fontSize: 10),)
          ],
        ),
      ),
    );

  }
}
