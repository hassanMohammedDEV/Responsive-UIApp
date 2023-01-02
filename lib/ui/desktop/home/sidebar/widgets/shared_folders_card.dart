import 'package:flutter/material.dart';
class SharedFoldersCard extends StatelessWidget {
  const SharedFoldersCard({Key? key, required this.text, required this.backgroundColor, required this.icon, required this.height}) : super(key: key);
  final String text;
  final Color backgroundColor;
  final IconData icon;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: backgroundColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(text,style: TextStyle(fontSize: height*0.3),)),
            CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.white,
              child: Icon(icon,size: height*0.4),
            ),
          ],
        ),
      ),
    );
  }
}
