import 'package:flutter/material.dart';
class RecentfileCard extends StatelessWidget {
  const RecentfileCard({Key? key, required this.icon, required this.iconBackgroundColor, required this.name, required this.fileType, required this.size}) : super(key: key);
  final IconData icon;
  final Color iconBackgroundColor;
  final String name, fileType,size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 570,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8),)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration:  BoxDecoration(
                        color: iconBackgroundColor,
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child:  Center(
                      child: Icon(icon,color: Colors.white,size: 13,),
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Text(name,style: const TextStyle(fontSize: 10)),
                ],
              ),
            ),
            Expanded(child: Text(fileType,style: const TextStyle(fontSize: 10))),
            Expanded(child: Text(size,style: const TextStyle(fontSize: 10))),
            const Expanded(
              child: Icon(Icons.share,size: 14,color: Color.fromRGBO(
                  38, 111, 213, 0.6),),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.more_horiz_outlined,size: 14,color: Color.fromRGBO(
                      38, 111, 213, 0.6),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
