import 'package:flutter/material.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/notification.dart';

class Search_Executive extends StatelessWidget {
  const Search_Executive({Key? key}) : super(key: key);
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
      "assets/images/img_1.png",
      "assets/images/img_2.png",
      "assets/images/img_3.png",
      "assets/images/img_4.png",
      "assets/images/img_5.png",

    ];
    final name = <String>[
      " Suraj Kumar Yadav ",
      " Ramesh",
      " Mangesh",
      " Ratna Giri",
      " Amrishpuri",
    ];

    final company = <String>[
      " Company 1 ",
      " Company 2 ",
      " Company 3 ",
      " Company 4 ",
      " ACompany 5 ",
    ];

    final exp = <String>[
      "(Experience.3+)",
      "(Experience.5+)",
      "(Experience.7+)",
      "(Experience.12+)",
      "(Experience.2+)",
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
        title: Text('Search Executive',style: TextStyle(color: Colors.black,fontSize: 25),),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15,bottom: 10),
                        border: InputBorder.none,
                        hintText: "Serach Executive"),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        // {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Deatils(
                        //     image:img[index],
                        //     sp: sp[index],
                        //     name: name[index],
                        //     colori: colori[index],
                        //       des:des[index],
                        //     dsp:dsp[index],

                        //   )));
                        // },
                        child: Container(
                          decoration: BoxDecoration(
                              color: colori[index],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                // color: Colors.red,
                                width: MediaQuery.of(context).size.width*0.6,
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                      ],
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      company[index],
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      exp[index],
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
