import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:realtime/doctor/Doctor.dart';
import 'package:realtime/notification.dart';
import 'package:realtime/search_page.dart';

import 'doctor/doctor_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  @override

  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: Color(0xffe4f2fd),
      body:
       SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Search_Page()));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.94,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Icon(Icons.search),
                        ),
                        _rotate(),
                      ],
                    )
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.9,
                    child: Doctor()),
              ],
            ),
          )

    );
  }
}
Widget _rotate(){
  return Row(
    mainAxisSize: MainAxisSize.max,
    children:[
      const Text(
        'Search Doctor By ',
        style: TextStyle(fontSize: 15.0),
      ),
      DefaultTextStyle(
        style: const TextStyle(
            fontSize: 15,
            color: Colors.red
        ),
        child: AnimatedTextKit(
            repeatForever: true,
            isRepeatingAnimation: true,
            animatedTexts: [
              RotateAnimatedText('Name'),
              RotateAnimatedText('Country'),
              RotateAnimatedText('State'),
              RotateAnimatedText('City'),
              RotateAnimatedText('District'),
            ]),
      ),
    ],
  );
}