import 'package:flutter/material.dart';
import 'package:realtime/Switch.dart';
import 'package:realtime/doctor/StatusBar.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/notification.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Real Time',style: TextStyle(color: Colors.black,fontSize: 25),),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 50),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                Column(
                  children: [
                    Text('Dr.SURAJ YADAV \n (surgeon)'),
                    Online(),
                  ],
                )
              ],
            ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: StatusBar(),
              ),
            Container(
              height: MediaQuery.of(context).size.height*0.90,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context,index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                      child: Text('Hospital/Clinic address 1',style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*.20,
                      width: MediaQuery.of(context).size.width*.9,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Founder code hopital sector H jankipuram \n lko 226013'),
                          Divider(thickness: 1,),
                          Text('Timing',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('Day',style: TextStyle(fontSize: 15),),
                                  Text('Monday'),
                                  Text('Tuesday'),
                                  Text('Wednesday'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Time',style: TextStyle(fontSize: 15),),
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


          ],),
        ),
      ),
    );
  }
}
