import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DoctorName extends StatefulWidget {
  DoctorName(
      {Key? key,
      required this.name,
      required this.specialist,
      required this.img,
      required this.colori,
      required this.hospital})
      : super(key: key);
  final String name;
  final String specialist;
  final String img;
  final Color colori;
  final String hospital;
    @override
  State<DoctorName> createState() => _DoctorNameState();
}


class _DoctorNameState extends State<DoctorName> {
  TextEditingController dateinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final hospitaladdress = <String>[
      "Hospital/Clinic address 1",
      "Hospital/Clinic address 2",
      "Hospital/Clinic address 3",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.colori,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(widget.img),
                  ),
                  Column(
                    children: [
                      Text(widget.name),
                      Text(widget.specialist),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.90,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                          child: Text(
                            hospitaladdress[index],
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .20,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  widget.hospital),
                              Divider(
                                thickness: 1,
                              ),
                              Text(
                                'Timing',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Day',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text('Monday'),
                                      Text('Tuesday'),
                                      Text('Wednesday'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text('9:00 - 12:00'),
                                      Text('9:00 - 12:00'),
                                      Text('9:00 - 12:00'),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            )
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Center(
            //       child: TextField(
            //         controller: dateinput, //editing controller of this TextField
            //         decoration: InputDecoration(
            //             focusedBorder: UnderlineInputBorder(
            //                 borderSide: BorderSide(color: Colors.transparent)),
            //             enabledBorder: UnderlineInputBorder(
            //                 borderSide: BorderSide(color: Colors.transparent)),
            //
            //             icon: Icon(Icons.calendar_today), //icon of text field
            //             labelText: "Select Date" //label text of field
            //         ),
            //         readOnly:
            //         true, //set it true, so that user will not able to edit text
            //         onTap: () async {
            //           DateTime? pickedDate = await showDatePicker(
            //               context: context,
            //               initialDate: DateTime.now(),
            //               firstDate: DateTime(
            //                   2000), //DateTime.now() - not to allow to choose before today.
            //               lastDate: DateTime(2101));
            //
            //           if (pickedDate != null) {
            //             print(
            //                 pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            //             String formattedDate =
            //             DateFormat('yyyy-MM-dd').format(pickedDate);
            //             print(
            //                 formattedDate); //formatted date output using intl package =>  2021-03-16
            //             //you can implement different kind of Date Format here according to your requirement
            //
            //             setState(() {
            //               dateinput.text =
            //                   formattedDate; //set output date to TextField value.
            //             });
            //           } else {
            //             print("Date is not selected");
            //           }
            //         },
            //       )),
            // ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            //   child:
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       InkWell(
            //         onTap: () {},
            //         child: Container(
            //           height: 30,
            //           width: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: Colors.blueGrey),
            //           child: Center(
            //               child: Text(
            //                 "02.00 pm",
            //                 style: TextStyle(color: Colors.white),
            //               )),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: Container(
            //           height: 30,
            //           width: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: Colors.blueGrey),
            //           child: Center(
            //               child: Text(
            //                 "03.00 pm",
            //                 style: TextStyle(color: Colors.white),
            //               )),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: Container(
            //           height: 30,
            //           width: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: Colors.blueGrey),
            //           child: Center(
            //               child: Text(
            //                 "04.00 pm",
            //                 style: TextStyle(color: Colors.white),
            //               )),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     InkWell(
            //       onTap: () {},
            //       child: Container(
            //         height: 30,
            //         width: 80,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.blueGrey),
            //         child: Center(
            //             child: Text(
            //               "06.00 pm",
            //               style: TextStyle(color: Colors.white),
            //             )),
            //       ),
            //     ),
            //
            //     InkWell(
            //       onTap: () {},
            //       child: Container(
            //         height: 30,
            //         width: 80,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.blueGrey),
            //         child: Center(
            //             child: Text(
            //               "05.00 pm",
            //               style: TextStyle(color: Colors.white),
            //             )),
            //       ),
            //     ),
            //   ],
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30),
            //   child: Center(
            //     child: OutlinedButton(
            //         style: OutlinedButton.styleFrom(
            //             backgroundColor: Color(0xff5d75e1),
            //             minimumSize: Size(300, 40),
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20))),
            //         onPressed: () {},
            //         child: Text(
            //           "Book an Appointment",
            //           style: TextStyle(color: Colors.white),
            //         )),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
