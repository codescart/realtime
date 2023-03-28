import 'package:flutter/material.dart';
import 'package:realtime/doctor/colleagues.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/doctor/profile.dart';
import 'package:realtime/doctor/search_Executive.dart';
import 'package:realtime/doctor/search_doctor.dart';
import 'package:realtime/notification.dart';
import 'package:realtime/setting.dart';

import '../sales_executive/doctor_home.dart';


class BottomN extends StatefulWidget {
  const BottomN({Key? key}) : super(key: key);

  @override
  State<BottomN> createState() => _BottomNState();
}

class _BottomNState extends State<BottomN> {
  int _currentindex = 0;
  final Screen = [
    Profile(),
    Colleagues(),
    SearchDoctor(),
    Search_Executive(),
    Setting()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffe4f2fd),
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: 'Colleagues',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: 'Doctors',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_sharp),
              label: 'Executives',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
