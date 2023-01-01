import 'package:flutter/material.dart';
class FileCard extends StatelessWidget {
  const FileCard({Key? key, required this.icon, required this.iconColor, required this.title, required this.text, required this.height, required this.width}) : super(key: key);
  final IconData icon;
  final Color iconColor;
  final String title,text;
  final double height,width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Expanded(child: Icon(icon,color: iconColor,size: 15)),
            const SizedBox(height: 5),
            Expanded(child: Text(title,style:  TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.15,color: const Color.fromRGBO(6, 54, 122, 1)))),
            Expanded(child: Text(text,style:   TextStyle(fontSize: height*0.13,color:  const Color.fromRGBO(6, 54, 122, 1)))),
             SizedBox(height: height*0.13),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 4),
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
