import 'package:flutter/material.dart';

class TwittesCrd extends StatelessWidget {
  const TwittesCrd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin:const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage:  NetworkImage('https://picsum.photos/200/300'),
                  child: SizedBox()),
              ],
            ),
          ),
          const SizedBox(width: 5,),
          Expanded(
            flex: 5,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: const [
                          Expanded(child: Text('Hassan Mohammed',
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          SizedBox(width: 2,),
                          Text('7assan@',style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 2,),
                          Text('.13 س',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:const [
                     Expanded(child: Text('You may combine any of the options above options above.')),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:const [
                        Icon(Icons.chat_bubble_outline,size: 18,color: Colors.grey),
                        Text('3',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                    Row(
                      children:const [
                        Icon(Icons.reset_tv,size: 18,color: Colors.grey),
                        Text('55',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                    Row(
                      children:const [
                        Icon(Icons.favorite_border,size: 18,color: Colors.grey),
                        Text('10',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                    Row(
                      children:const [
                        Icon(Icons.share,size: 18,color: Colors.grey),
                        Text('1',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
              ],
          ),),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: const [
          Icon(Icons.more_vert,color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
