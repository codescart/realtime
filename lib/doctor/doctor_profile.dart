import 'package:flutter/material.dart';
import 'package:realtime/doctor/bottom.dart';
import 'package:realtime/doctor/update_profile.dart';
import 'package:realtime/sales_executive/bottom_navbar.dart';

import 'doctorhome.dart';
class Doctor_Profile extends StatefulWidget {
  const Doctor_Profile({Key? key}) : super(key: key);

  @override
  State<Doctor_Profile> createState() => _Doctor_ProfileState();
}

class _Doctor_ProfileState extends State<Doctor_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomN()));
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 240),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfile(
                  doctorName:"Suraj Yadav"
              )));
            }, child: Text('Edit profile')),
          ),
        ],
        backgroundColor: Color(0xffe4f2fd),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Text(' Dr. Suraj Yadav',style: TextStyle(fontSize: 30),),
                ),
                Text('(Specialist - Orthopedics)',style: TextStyle(fontSize: 15,color: Colors.black45),),
                Divider(thickness: 1,),
                ListTile(
                  title: Text('Mobile No.'),
                  trailing: Text('0101010101'),
                ),
                ListTile(
                  title: Text('Email id'),
                  trailing: Text('email@gmail.com'),
                ),
                ListTile(
                  title: Text('Hospital name'),
                  trailing: Text('xyz hospital'),
                ),
                ListTile(
                  title: Text('Hospital/clinic Address 1'),
                  subtitle: Text('Pin - 226028'),
                  trailing: Text('01 colony lko'),
                ),
                ListTile(
                  title: Text('Hospital/clinic Address 2'),
                  subtitle: Text('Pin - 226021'),
                  trailing: Text('02 colony lko'),
                ),
                ListTile(
                  title: Text('Country'),
                  trailing: Text('India'),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

