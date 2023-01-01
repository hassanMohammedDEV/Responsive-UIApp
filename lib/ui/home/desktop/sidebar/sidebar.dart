import 'package:flutter/material.dart';
import 'package:ui_app/ui/home/desktop/sidebar/widgets/add_more_card.dart';
import 'package:ui_app/ui/home/desktop/sidebar/widgets/shared_folders_card.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return  Container(
      color: const Color.fromRGBO(235, 242, 252, 1),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(14))
          ),
          child: Padding(
            padding: EdgeInsets.all(height*0.02),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(235, 242, 252, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Icon(Icons.save_alt,size: height*0.12,color: const Color.fromRGBO(6, 54, 122, 1),)),
                            SizedBox(height: height*0.1),
                            const Expanded(child: Text('Add new files',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 54, 122, 1)))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromRGBO(235, 242, 252, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(child: Text('Your storage',style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(child: Text('25% left',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blue))),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('75 GB of 100 are used',style: TextStyle(fontSize: 11)),
                        const SizedBox(height: 10),
                        LinearProgressIndicator(
                          color: const Color.fromRGBO(6, 54, 122, 1),
                          backgroundColor: Colors.blue.withOpacity(0.2),
                          value: 0.8,
                          minHeight: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  flex: 4,
                  child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(235, 242, 252, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Your shared folders',style: TextStyle(fontWeight: FontWeight.bold),),
                            const SizedBox(height: 12),
                            SharedFoldersCard(text: 'Project team',backgroundColor: const Color.fromRGBO(189, 229, 235, 1),icon:Icons.groups_rounded ,height: height *0.06),
                            const SizedBox(height: 10),
                            SharedFoldersCard(text: 'Management staff',backgroundColor: const Color.fromRGBO(215, 215, 255, 1),icon:Icons.manage_accounts,height: height *0.06),
                             const SizedBox(height: 10),
                            SharedFoldersCard(text: 'Project reports',backgroundColor: const Color.fromRGBO(247, 218, 231, 1),icon:Icons.print,height: height *0.06),
                            const SizedBox(height: 10),
                            const AddMoreCard(),
                          ],
                        ),
                      ),
                    ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
