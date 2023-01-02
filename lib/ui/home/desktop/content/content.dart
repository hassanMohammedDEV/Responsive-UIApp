import 'package:flutter/material.dart';
import 'package:ui_app/model/category/category_model.dart';
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
              flex: 1,
              child: SingleChildScrollView(
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
