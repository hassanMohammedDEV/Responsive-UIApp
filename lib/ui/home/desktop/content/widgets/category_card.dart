import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, this.towIcon, required this.circleIcon, this.icon, required this.title, required this.text, required this.backgroundColor, this.secondIconColor, required this.width, required this.height}) : super(key: key);
  final Color backgroundColor;
  final Color? secondIconColor;
  final bool? towIcon;
  final IconData circleIcon;
  final IconData? icon;
  final String title,text;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
                  maxRadius: height*0.16,
                  backgroundColor: Colors.white,
                  child: Icon(circleIcon,color: Colors.black54,size: height*0.18),
                ),
                towIcon??false
                    ?Expanded(child: Icon(icon,color: secondIconColor,size: 18,))
                    :const SizedBox(),
              ],
            ),
            SizedBox(height: height*0.04,),
            Expanded(child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: height*0.16))),
            Expanded(child: Text(text,style: TextStyle(color: Colors.white,fontSize: height*0.13))),
          ],
        ),
      ),
    )  ;
  }

}
