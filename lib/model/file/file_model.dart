import 'package:flutter/material.dart';

class FileModel{
  final String title;
  final String text;
  final IconData icon;
  final Color iconColor;

  FileModel(this.title, this.text, this.icon, this.iconColor);

  static List<FileModel> getFiles(){
    List<FileModel> files = [
      FileModel('Work', '820 Files', Icons.storage, const Color.fromRGBO(102, 99, 254, 1)),
      FileModel('Personal', '50 Files', Icons.person, const Color.fromRGBO(0, 160, 182, 1)),
      FileModel('School', '65 Files', Icons.school, const Color.fromRGBO(224, 108, 159, 1)),
      FileModel('Archive', '22 Files', Icons.archive, const Color.fromRGBO(38, 111, 213, 1)),
    ];

    return files;
  }
}