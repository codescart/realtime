import 'package:flutter/material.dart';
import 'package:realtime/Switch.dart';
import 'package:realtime/doctor/DoctorName.dart';
import 'package:realtime/doctor/MessagePopup.dart';
import 'package:realtime/doctor/StatusBar.dart';
import 'package:realtime/sales_executive/removelist.dart';

class SelectedList extends StatefulWidget {
  const SelectedList({Key? key}) : super(key: key);

  @override
  State<SelectedList> createState() => _SelectedListState();
}

class _SelectedListState extends State<SelectedList> {
  final colori = <Color>[
    Color(0xffa0e8ff),
    Color(0xff3a4163),
  ];
  final name = <String>[
    "Dr. Selkon",
    "Dr. Suraj",
  ];
  final specialist = <String>[
    "Heart Surgeon\n MS(SGPGI)",
    "Neuro Surgeon\n MS(SGPGI)",
  ];
  final img = <String>[
    'assets/images/img.png',
    'assets/images/doctor.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      body: ListView.builder(
          itemCount: 2,
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
                            colori: colori[index], hospital: "",
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
                                          return RemoveList();
                                        });
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white54,
                                    child: Icon(Icons.remove),
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
