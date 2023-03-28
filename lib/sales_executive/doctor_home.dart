import 'package:flutter/material.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  final colori = <Color>[
    Color(0xffa0e8ff),
    Color(0xff3a4163),
    Color(0xffcdd2d5),
    Color(0xff6256ff),
    Color(0xfff69d48),
  ];
  final name = <Text>[
    Text(
      " Selkon",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
      " Rajeev",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
      " Sadhna",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
      " Anju",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
      " Anil Kr. ",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ];
  final sp = <Text>[
    Text(
      "LIG 2/320\nLucknow",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
    ),
    Text(
      "Sector-H\nJankipuram",
      style: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
    ),
    Text(
      "Gol Market\nLucknow",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
    ),
    Text(
      "IIM\nLucknow",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
    ),
    Text(
      "Bhitauli\nLucknow",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Container(
                    decoration: BoxDecoration(
                        color: colori[index],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [

                        Container(
                          width: 180,
                          height: 100,
                          // color: Colors.red,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              name[index],
                              sp[index],

                            ],


                          ),
                        )
                      ],
                    ),
                  ),
                );
            }),
      ),
    );
  }
}