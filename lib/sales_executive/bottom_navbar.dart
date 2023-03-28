import 'package:flutter/material.dart';
import 'package:realtime/home.dart';
import 'package:realtime/notification.dart';
import 'package:realtime/sales_executive/ececutiveprofile.dart';
import 'package:realtime/sales_executive/selectedlist.dart';
import 'package:realtime/setting.dart';

class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({Key? key}) : super(key: key);

  @override
  State<Bottom_Navbar> createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  int _currentindex = 0;
  final Screen = [
    Home(),
    SelectedList(),
    profile(),
    Setting(),
  ];
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/executive.png'),
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

      ),


      body: Screen[_currentindex],
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: Color(0xffe4f2fd),
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                ),

            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: 'Day Plan',
                ),


            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting'
            )
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}