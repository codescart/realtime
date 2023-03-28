import 'package:flutter/material.dart';
import 'package:realtime/doctor/doctor_profile.dart';
import 'package:realtime/notification.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        title: Text('Setting',style: TextStyle(color: Colors.black,fontSize: 25),),
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

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          children: [
            ListTile(
              onTap: (){},
              title: Text('Language'),
              leading: Icon(Icons.language),
              trailing: Text('English'),

            ),
            ListTile(
              onTap: (){},
              title: Text('Contact Us'),
              leading: Icon(Icons.quick_contacts_mail),

            ),
            ListTile(
              onTap: (){},
              title: Text('Terms & Codition'),
              leading: Icon(Icons.question_mark),

            ),
            ListTile(
              onTap: (){},
              title: Text('Policy'),
              leading: Icon(Icons.policy),

            ),
            ListTile(
              onTap: (){},
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),


          ],
        ),
      ),
    );
  }
}
