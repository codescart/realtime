import 'package:flutter/material.dart';
import 'package:realtime/doctor/DoctorName.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/doctor/profile.dart';
import 'package:realtime/notification.dart';
import 'package:realtime/setting.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> with TickerProviderStateMixin{
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
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
        title: Text('Real Time',style: TextStyle(color: Colors.black,fontSize: 30),),
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
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          unselectedLabelColor: Colors.blue,
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),


          labelPadding: EdgeInsets.symmetric(horizontal: 50),
          tabs: [
            Tab(
              child: Text(
                "Profile ",
              ),
            ),
            Tab(
              child: Text(
                "Setting",
              ),
            ),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*.85,
          child: TabBarView(
            controller: tabController,
            children: [
              Profile(),
              Setting(),
            ],
          ),
        ),
      ),


    );
  }
}