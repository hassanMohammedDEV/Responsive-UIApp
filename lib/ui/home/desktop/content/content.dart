import 'package:flutter/material.dart';
import 'package:ui_app/ui/home/desktop/content/widgets/category_card.dart';
import 'package:ui_app/ui/home/desktop/content/widgets/file_card.dart';
import 'package:ui_app/ui/home/desktop/content/widgets/recent_file_card.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Container(
      height: height,
      width: width,
      color: const Color.fromRGBO(235, 242, 252, 1),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const TextField(
             decoration: InputDecoration(
               fillColor: Colors.white,
               filled: true,
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(25)),
                 borderSide: BorderSide.none
               ),
               prefixIcon: Icon(Icons.search),
               hintText: 'search',
             ),
           ),
            const SizedBox(height: 20),
            const Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            const SizedBox(height: 15),
            SingleChildScrollView(

              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                   CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: const Color.fromRGBO(0, 160, 182, 1),title: 'Pictures',text: '480 files',circleIcon: Icons.camera_enhance_rounded,towIcon: true,icon: Icons.star,secondIconColor: Colors.yellowAccent),
                  const SizedBox(width: 8),
                   CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: const Color.fromRGBO(102, 99, 254, 1),title: 'Audio',text: '190 files',circleIcon: Icons.file_copy_rounded),
                  const SizedBox(width: 8),
                  CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: const Color.fromRGBO(224, 108, 159, 1),title: 'Videos',text: '30 files',circleIcon: Icons.videocam_sharp),
                  const SizedBox(width: 8,),
                  CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: const Color.fromRGBO(38, 111, 213, 1),title: 'Audio',text: '80 files',circleIcon: Icons.mic),
                  const SizedBox(width: 8,),
                  CategoryCard(height: height*0.11,width: width*0.08,backgroundColor:  Colors.deepPurple,title: 'PDF',text: '250 files',circleIcon: Icons.bookmark_add_outlined),
                  const SizedBox(width: 8,),
                  CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: Colors.amber,title: 'Games',text: '25 files',circleIcon: Icons.games_sharp),
                  const SizedBox(width: 8,),
                  CategoryCard(height: height*0.11,width: width*0.08,backgroundColor: Colors.blueGrey,title: 'Others',text: '25 files',circleIcon: Icons.cake),
                ],
              ),
            ),
            //TODO Files Part
            const SizedBox(height: 20),
            const Text('Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FileCard(height: height*0.10,width: width*0.07,title: 'Work', text: '820 Files',icon: Icons.storage,iconColor: const Color.fromRGBO(102, 99, 254, 1)),
                  const SizedBox(width: 8),
                  FileCard(height: height*0.10,width: width*0.07,title: 'Personal', text: '115 Files',icon: Icons.person,iconColor: const Color.fromRGBO(0, 160, 182, 1)),
                  const SizedBox(width: 8),
                  FileCard(height: height*0.10,width: width*0.07,title: 'School', text: '65 Files',icon: Icons.school,iconColor: const Color.fromRGBO(224, 108, 159, 1)),
                  const SizedBox(width: 8),
                  FileCard(height: height*0.10,width: width*0.07,title: 'Archive', text: '22 Files',icon: Icons.archive,iconColor: const Color.fromRGBO(38, 111, 213, 1)),
                  const SizedBox(width: 8),
                  Container(
                    width: width*0.07,
                    height: height*0.10,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 249, 253, 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Icon(Icons.add,color: Color.fromRGBO(38, 111, 213, 1),size: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            //TODO Recent Files Part
            const Text('Recent Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecentfileCard(icon: Icons.camera_enhance_rounded,iconBackgroundColor: const Color.fromRGBO(102, 99, 245, 1),name: 'IMG_10000000',fileType: 'PNG file',size: '105 MB',height: height *0.06,width: width *0.5),
                   const SizedBox(height: 8,),
                     RecentfileCard(icon: Icons.videocam_sharp,iconBackgroundColor: const Color.fromRGBO(224, 108, 159, 1),name: 'StartUp pitch',fileType: 'AVI file',size: '108 MB',height: height *0.05,width: width *0.5),
                    const SizedBox(height: 8,),
                    RecentfileCard(icon: Icons.mic,iconBackgroundColor: const Color.fromRGBO(30, 111, 213, 1),name: 'Freestyle beat',fileType: 'MB3 file',size: '21 MB',height: height *0.05,width: width *0.5),
                    const SizedBox(height: 8,),
                    RecentfileCard(icon: Icons.copy,iconBackgroundColor: const Color.fromRGBO(0, 160, 182, 1),name: 'Work proposal',fileType: 'audio file',size: '33 MB',height: height *0.05,width: width *0.5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
