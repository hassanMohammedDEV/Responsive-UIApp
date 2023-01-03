import 'package:flutter/material.dart';

class MobDrawer extends StatelessWidget {
  const MobDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(6, 54, 122, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              const CircleAvatar(
                //backgroundImage: NetworkImage(''),
                maxRadius: 35,
                backgroundColor: Colors.white,
                child: SizedBox(),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children:const [
                            Icon(Icons.person_add_alt_rounded,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('My cloud',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children:const [
                            Icon(Icons.groups,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('Shared files',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children:const [
                            Icon(Icons.star,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('Shared files',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children:const [
                            Icon(Icons.cloud_upload,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('upload files',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Column(
                      children: [
                        Row(
                          children:const [
                            Icon(Icons.settings,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('Setting',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children:const [
                            Icon(Icons.logout,color: Colors.white,),
                            SizedBox(width: 8),
                            Expanded(child: Text('Log out',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                          ],
                        ),
                        const SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
