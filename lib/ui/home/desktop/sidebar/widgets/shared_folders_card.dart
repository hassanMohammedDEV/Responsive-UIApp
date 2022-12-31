import 'package:flutter/material.dart';
class SharedFoldersCard extends StatelessWidget {
  const SharedFoldersCard({Key? key, required this.text, required this.backgroundColor, required this.icon}) : super(key: key);
  final String text;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: backgroundColor
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              CircleAvatar(
                maxRadius: 15,
                backgroundColor: Colors.white,
                child: Icon(icon,size: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
