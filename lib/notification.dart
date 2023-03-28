import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final img = <String>[
    "assets/images/M1.jpg",
    "assets/images/2m.png",
    "assets/images/F1.png",
    "assets/images/F2.png",
    "assets/images/M31.png",


  ];
  final name = <String>[
    "Change the status doctor is going to available",
    "Change the status doctor is going to unavailable",
    "Doctor is changing their address",
    "Doctor is changing their address",
    "Doctor is changing their address",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe4f2fd),

        appBar: AppBar(
          backgroundColor: Color(0xffe4f2fd),
          title: Text("Notifications",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          elevation: 0,

          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),

        ),
        body:ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
              return ListTile(

                leading: CircleAvatar(
                  backgroundImage: AssetImage(img[index]),
                ),
                title: Text(name[index]),
                trailing: IconButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context){
                    return Container(
                      height: 130,
                      color: Color(0xffe9e1f5),

                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.check,color: Colors.black,),
                              title: Text("Mark as read",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.delete,color: Colors.black,),
                              title: Text("Delete",style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                }, icon: Icon(Icons.more_vert)),
              );
            })


    );
  }
}