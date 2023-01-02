import 'package:flutter/material.dart';

class RecentFileModel{
  final String name;
  final String fileType;
  final String size;
  final IconData icon;
  final Color iconColor;

  RecentFileModel(this.name, this.fileType, this.size, this.icon, this.iconColor);

  static List<RecentFileModel> getRecentFiles(){
    List<RecentFileModel> list = [
      RecentFileModel('IMG_10000000', 'PNG file', '105 MB', Icons.camera_enhance_rounded, const Color.fromRGBO(102, 99, 245, 1)),
      RecentFileModel('StartUp pitch', 'AVI file', '108 MB', Icons.videocam_sharp, const Color.fromRGBO(224, 108, 159, 1)),
      RecentFileModel('Freestyle beat', 'MB3 file', '21 MB', Icons.mic, const Color.fromRGBO(30, 111, 213, 1)),
      RecentFileModel('Work proposal', 'audio file', '33 MB', Icons.copy, const Color.fromRGBO(0, 160, 182, 1)),
    ];

    return list;
  }
}