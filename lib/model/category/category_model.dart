import 'package:flutter/material.dart';
class CategoryModel{
  final Color backgroundColor;
  final Color? secondIconColor;
  final bool? towIcon;
  final IconData circleIcon;
  final IconData? secondIcon;
  final String title,text;

  CategoryModel(
      this.backgroundColor,
      this.secondIconColor,
      this.towIcon,
      this.circleIcon,
      this.secondIcon,
      this.title,
      this.text,
     );

  static List<CategoryModel> getCategory()
  {
    List<CategoryModel> category = [
      CategoryModel(const Color.fromRGBO(0, 160, 182, 1), Colors.yellowAccent, true, Icons.camera_enhance_rounded, Icons.star, 'Pictures', '480 files'),
      CategoryModel(const Color.fromRGBO(102, 99, 254, 1), null, false, Icons.file_copy_rounded, null, 'Papers', '190 files'),
      CategoryModel(const Color.fromRGBO(224, 108, 159, 1), null, false, Icons.videocam_sharp, null, 'Videos', '30 files'),
      CategoryModel(const Color.fromRGBO(38, 111, 213, 1), null, false, Icons.mic, null, 'Audio', '44 files'),
      CategoryModel(Colors.deepPurple, null, false, Icons.bookmark_add_outlined, null, 'PDF', '250 files'),
      CategoryModel(Colors.amber, null, false, Icons.games_sharp, null, 'Games', '250 25'),
      CategoryModel(Colors.blueGrey, null, false, Icons.cake, null, 'Others', '115 25'),
    ];

    return category;
  }
}