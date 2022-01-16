import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:const Icon(
           Icons.menu
          ),
          title:const Text(
            'Contacts',
             style:TextStyle(
              fontSize:25.0,
            ),
            ),
            actions: [
              IconButton(
                onPressed: (){},
                icon:const Icon(Icons.search),
              ),
               IconButton(
                onPressed: (){},
                icon:const Icon(Icons.more_vert),
              ),
               const SizedBox(width: 10),
            ],
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:32,vertical:24),
              child:ListView.builder(
                itemBuilder: (BuildContext context, int index){
                    return Row(
                children:[
                  const CircleAvatar(
                    backgroundImage:AssetImage(
                      'images/woman.jpg',
                      ),
                      radius:30,
                  ),
                    const SizedBox(width:10),
                  Column(
                      mainAxisSize:MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                    children:const[
                       Text(
                         'Abena Thompson',
                         style:TextStyle(
                           fontSize:20,
                           fontWeight:FontWeight.w700,
                         ),
                         ),
                       Text(
                         '+233 54 099775773',
                         style:TextStyle(
                           fontSize:18,
                           fontWeight:FontWeight.w400,
                         ),
                         ),
                    ],
                  ),
                  const Spacer(),
                    Row(
                      children:const[
                        Icon(
                          Icons.phone,
                          color:Colors.green,
                          size:25,
                          ),
                      ],
                    ),
                ],
                  );
                  },
              ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child:const Icon(
          Icons.add,
          size:40,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
           bottomNavigationBar:const BottomAppBar(
             color:Colors.blue,
             shape:CircularNotchedRectangle(),
              child:SizedBox(
               height:60,
          ),
        ),
    );
  }
}