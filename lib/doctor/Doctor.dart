import 'package:flutter/material.dart';
import 'package:realtime/Switch.dart';
import 'package:realtime/doctor/DoctorName.dart';
import 'package:realtime/doctor/MessagePopup.dart';
import 'package:realtime/doctor/StatusBar.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final colori = <Color>[
    Color(0xffa0e8ff),
    Color(0xff3a4163),
    Color(0xffcdd2d5),
    Color(0xff6256ff),
    Color(0xfff69d48),
  ];
  final name = <String>[
    "Dr. Selkon",
    "Dr. Suraj",
    "Dr. Satyam",
    "Dr. Billo",
    "Dr. Nazim",
  ];
  final specialist = <String>[
    "Heart Surgeon\n MS(SGPGI)",
    "Neuro Surgeon\n MS(SGPGI)",
    "Physician\n MD(KGMU)",
    "Gynoclogist\n MD(KGMU)",
    "Urology\n MS(AIIMS,Delhi)",
  ];
  final img = <String>[
    'assets/images/img.png',
    'assets/images/doctor.png',
    'assets/images/img.png',
    'assets/images/doctor.png',
    'assets/images/img.png',
  ];

  final hospital = <String>[
    'chandan hospital',
    'suraj hospital',
    'satyam hospital',
    'mera hospital',
    'apna hospital',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      body: ListView.builder(
          itemCount: 5,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorName(

                                name: name[index],
                                specialist: specialist[index],
                                img: img[index],
                                colori: colori[index], hospital: hospital[index],
                              )));
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: colori[index],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(img[index]),
                          radius: 50,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        width: 200,
                        // height: 150,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Online(),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return MessagePopup();
                                        });
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white54,
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              name[index],
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              specialist[index],
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 10),
                            ),
                            StatusBar(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
