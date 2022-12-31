import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(17),
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
                          children: const [
                            Icon(Icons.save_alt,size: 50,color: Color.fromRGBO(6, 54, 122, 1),),
                            SizedBox(height: 20),
                            Text('Add new files',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 54, 122, 1))),
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
                            Text('Your storage',style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('25% left',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your shared folders',style: TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(height: 12),
                          sidebarListCard('Project team',const Color.fromRGBO(189, 229, 235, 1),Icons.groups_rounded),
                          const SizedBox(height: 10),
                          sidebarListCard('Management staff',const Color.fromRGBO(215, 215, 255, 1),Icons.manage_accounts),
                          const SizedBox(height: 10),
                          sidebarListCard('Project reports',const Color.fromRGBO(247, 218, 231, 1),Icons.print),
                          const SizedBox(height: 10),
                          addMoreCard(),
                        ],
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
  
  Widget sidebarListCard(String text,Color backgroundColor, IconData icon){
    return Expanded(
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: backgroundColor
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              CircleAvatar(
                maxRadius: 15,
                backgroundColor: Colors.white,
                child: Icon(icon,size: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addMoreCard(){
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(235, 242, 252, 1),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add,size: 5,color: Colors.blueAccent),
            SizedBox(width: 3),
            Text('Add more',style: TextStyle(color: Colors.blueAccent,fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
