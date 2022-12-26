import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
            Row(
              children: [
                Container(
                  width: 100,
                  height: 85,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(102, 99, 254, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              maxRadius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.camera_enhance_rounded,color: Colors.black54,size: 15),
                            ),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 18,),
                          ],
                        ),
                       const SizedBox(height: 10,),
                        const Text('Pictures',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        const Text('480 files',style: TextStyle(color: Colors.white,fontSize: 11)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                //TODO Documentation card
                Container(
                  width: 100,
                  height: 85,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 160, 182, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              maxRadius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.file_copy_rounded,color: Color.fromRGBO(0, 160, 182, 1),size: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text('Pictures',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        const Text('190 files',style: TextStyle(color: Colors.white,fontSize: 11)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                //TODO Videos Card
                Container(
                  width: 100,
                  height: 85,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(224, 108, 159, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              maxRadius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.videocam_sharp,color: Color.fromRGBO(224, 108, 159, 1),size: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text('Videos',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        const Text('30 files',style: TextStyle(color: Colors.white,fontSize: 11)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                //TODO Audio Card
                Container(
                  width: 100,
                  height: 85,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(38, 111, 213, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              maxRadius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.mic,color: Color.fromRGBO(38, 111, 213, 1),size: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text('Videos',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        const Text('80 files',style: TextStyle(color: Colors.white,fontSize: 11)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //TODO Files Part
            const SizedBox(height: 20),
            const Text('Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Icon(Icons.storage,color: Color.fromRGBO(102, 99, 254, 1),size: 15),
                        const SizedBox(height: 5),
                        const Text('Work',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Color.fromRGBO(6, 54, 122, 1))),
                        const Text('820 Files',style:  TextStyle(fontSize: 11,color:  Color.fromRGBO(6, 54, 122, 1))),
                        const SizedBox(height: 15),
                        Center(
                          child: Container(
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
                ),
                const SizedBox(width: 8),
                //TODO Personal Card
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Icon(Icons.person,color: Color.fromRGBO(0, 160, 182, 1),size: 15),
                        const SizedBox(height: 5),
                        const Text('Personal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Color.fromRGBO(6, 54, 122, 1))),
                        const Text('115 Files',style:  TextStyle(fontSize: 11,color:  Color.fromRGBO(6, 54, 122, 1))),
                        const SizedBox(height: 15),
                        Center(
                          child: Container(
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
                ),
                const SizedBox(width: 8),
                //TODO School Card
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Icon(Icons.school,color: Color.fromRGBO(224, 108, 159, 1),size: 15),
                        const SizedBox(height: 5),
                        const Text('School',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Color.fromRGBO(6, 54, 122, 1))),
                        const Text('65 Files',style:  TextStyle(fontSize: 11,color:  Color.fromRGBO(6, 54, 122, 1))),
                        const SizedBox(height: 15),
                        Center(
                          child: Container(
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
                ),
                const SizedBox(width: 8),
                //TODO Archive
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Icon(Icons.archive,color: Color.fromRGBO(38, 111, 213, 1),size: 15),
                        const SizedBox(height: 5),
                        const Text('Archive',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Color.fromRGBO(6, 54, 122, 1))),
                        const Text('21 Files',style:  TextStyle(fontSize: 11,color:  Color.fromRGBO(6, 54, 122, 1))),
                        const SizedBox(height: 15),
                        Center(
                          child: Container(
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
                ),
                const SizedBox(width: 8),
                Container(
                  width: 100,
                  height: 80,
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
            const SizedBox(height: 25),
            //TODO Recent Files Part
            const Text('Recent Files', style: TextStyle(color: Color.fromRGBO(6, 54, 122, 1),fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                recentfile(Icons.camera_enhance_rounded,const Color.fromRGBO(102, 99, 245, 1),'IMG_10000000','PNG file','5 MB'),
               const SizedBox(height: 8,),
                recentfile(Icons.videocam_sharp,const Color.fromRGBO(102, 99, 245, 1),'IMG_10000000','PNG file','5 MB'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget recentfile(IconData icon,Color iconBackgroundColor,String name, String fileType,String size){
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
            const SizedBox(width: 10),
            Text(size),
            const SizedBox(width: 10),
            const Icon(Icons.share),
            const SizedBox(width: 10),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
