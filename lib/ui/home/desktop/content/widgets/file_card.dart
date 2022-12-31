import 'package:flutter/material.dart';
class FileCard extends StatelessWidget {
  const FileCard({Key? key, required this.icon, required this.iconColor, required this.title, required this.text}) : super(key: key);
  final IconData icon;
  final Color iconColor;
  final String title,text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Icon(icon,color: iconColor,size: 15),
            const SizedBox(height: 5),
            Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Color.fromRGBO(6, 54, 122, 1))),
            Text(text,style:  const TextStyle(fontSize: 11,color:  Color.fromRGBO(6, 54, 122, 1))),
            const SizedBox(height: 15),
            Center(
              child: Container(
                height: 1.2,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
