import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.towIcon, required this.circleIcon, this.icon, required this.title, required this.text, required this.backgroundColor, this.secondIconColor}) : super(key: key);
  final Color backgroundColor;
  final Color? secondIconColor;
  final bool towIcon;
  final IconData circleIcon;
  final IconData? icon;
  final String title,text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 85,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                CircleAvatar(
                  maxRadius: 12,
                  backgroundColor: Colors.white,
                  child: Icon(circleIcon,color: Colors.black54,size: 15),
                ),
                towIcon
                    ?Icon(icon,color: secondIconColor,size: 18,)
                    :const SizedBox(),
              ],
            ),
            const SizedBox(height: 10,),
            Text(title,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            Text(text,style: const TextStyle(color: Colors.white,fontSize: 11)),
          ],
        ),
      ),
    )  ;
  }

}
