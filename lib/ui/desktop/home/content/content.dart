import 'package:flutter/material.dart';
import 'package:ui_app/model/category/category_model.dart';
import 'package:ui_app/model/file/file_model.dart';

import 'widgets/category_card.dart';
import 'widgets/file_card.dart';
import 'widgets/recent_file_card.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 10),
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
            Expanded(
              flex: 1,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: CategoryModel.getCategory().length,
                  itemBuilder: (context,index)
                      {
                        double cardHeight = height*0.11;
                        double cardWidth = width*0.08;
                        CategoryModel category=CategoryModel.getCategory()[index];

                        return CategoryCard(
                            circleIcon: category.circleIcon,
                            title: category.title,
                            text: category.text,
                            backgroundColor: category.backgroundColor,
                            width: cardWidth,
                            height: cardHeight,
                            towIcon: category.towIcon,
                            secondIcon: Icons.star,
                            secondIconColor: Colors.yellowAccent,
                        );
                      }
              ),
            ),
            const SizedBox(height: 20),
            const Text('Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemCount: FileModel.getFiles().length,

                  itemBuilder: (context,index)
                  {
                    double cardHeight = height*0.11;
                    double cardWidth = width*0.08;
                    FileModel file = FileModel.getFiles()[index];

                    return FileCard(
                      width: cardWidth,
                      height: cardHeight,
                      title: file.title,
                      text: file.text,
                      icon: file.icon,
                      iconColor: file.iconColor,
                    );

                  }),
            ),
            const SizedBox(height: 25),
            const Text('Recent Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecentfileCard(icon: Icons.camera_enhance_rounded,iconBackgroundColor: const Color.fromRGBO(102, 99, 245, 1),name: 'IMG_10000000',fileType: 'PNG file',size: '105 MB',height: height *0.06,width: width),
                   const SizedBox(height: 8,),
                     RecentfileCard(icon: Icons.videocam_sharp,iconBackgroundColor: const Color.fromRGBO(224, 108, 159, 1),name: 'StartUp pitch',fileType: 'AVI file',size: '108 MB',height: height *0.05,width: width),
                    const SizedBox(height: 8,),
                    RecentfileCard(icon: Icons.mic,iconBackgroundColor: const Color.fromRGBO(30, 111, 213, 1),name: 'Freestyle beat',fileType: 'MB3 file',size: '21 MB',height: height *0.05,width: width),
                    const SizedBox(height: 8,),
                    RecentfileCard(icon: Icons.copy,iconBackgroundColor: const Color.fromRGBO(0, 160, 182, 1),name: 'Work proposal',fileType: 'audio file',size: '33 MB',height: height *0.05,width: width),
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
