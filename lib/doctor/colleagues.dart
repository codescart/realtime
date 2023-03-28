import 'package:flutter/material.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/notification.dart';

class Colleagues extends StatefulWidget {
  const Colleagues({Key? key}) : super(key: key);

  @override
  State<Colleagues> createState() => _ColleaguesState();
}

class _ColleaguesState extends State<Colleagues> {
  @override
  Widget build(BuildContext context) {
    final colori = <Color>[
      Color(0xffa0e8ff),
      Color(0xff3a4163),
      Color(0xffcdd2d5),
      Color(0xff6256ff),
      Color(0xfff69d48),
    ];
    final img = <String>[
      "assets/images/doctor.png",
      "assets/images/doctor_1.png",
      "assets/images/executive_1.png",
    ];
    final name = <String>[
      "Dr. Suraj Kumar Yadav ",
      "Dr. Ramesh",
      "Dr. Mangesh",
    ];
    final sp = <String>[
      "Heart Surgeon Specalist",
      "Neuro Surgeon",
      "Physician",
    ];

    final edu = <String>[
      "MS(SGPGI",
      "MS(SGPGI",
      "MD(KGMU",
    ];
    final exp = <String>[
      "(Experience.3+)",
      "(Experience.5+)",
      "(Experience.7+)",
    ];
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffe4f2fd),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctor_Profile()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/doctor.png'),
            ),
          ),
        ),
        title: Text('Colleagues',style: TextStyle(color: Colors.black,fontSize: 25),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
              },
              child: CircleAvatar(
                child: Icon(Icons.notifications),
              ),
            ),
          ),

        ],

      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: colori[index],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(img[index]),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        height: MediaQuery.of(context).size.height*0.18,
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute
                                      //   (builder: (context)=>Chat(name: name[index],)));
                                    },
                                    icon: CircleAvatar(
                                      radius: 100,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                        "assets/images/img_6.png",
                                      ),
                                    )),
                                IconButton(
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute
                                      //   (builder: (context)=>Chat(name: name[index],)));
                                    },
                                    icon: CircleAvatar(
                                      radius: 100,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.group_remove,
                                        color: Colors.black,
                                      ),
                                    )),
                              ],
                            ),
                            Text(
                              name[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),

                            Text(
                              exp[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            // const Text(
                            //   "Exp. 3+",
                            //   style: TextStyle(fontWeight: FontWeight.bold),
                            // )
                            // StatusBar(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
