import 'package:flutter/material.dart';
import 'package:realtime/doctor/doctor_signup.dart';
import 'package:realtime/sales_executive/executive_signup.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),

      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 100,bottom: 20),
            child: CircleAvatar(
              radius: 60,
               backgroundImage: AssetImage('assets/images/logo.jpeg')),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Login with Mobile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Container(
                  alignment: Alignment.center,
                  //  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 50,
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0XFF3b9fbe),
                    decoration: InputDecoration(
                      counterText: '',
                      icon: Icon(Icons.phone_android,color: Color(0XFF3b9fbe),),
                      hintText: 'Mobile Number',
                      border: InputBorder.none,
                    ),
                  )
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Container(
                  alignment: Alignment.center,
                  //  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 50,
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.name,
                    cursorColor: Color(0XFF3b9fbe),
                    decoration: InputDecoration(
                      counterText: '',
                      icon: Icon(Icons.password,color: Color(0XFF3b9fbe),),
                      hintText: 'Enter Password',
                      border: InputBorder.none,
                    ),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp_Page()));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4cb050),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),
            ),
            Text("Don't have an account?",style: TextStyle(fontSize: 20)),
            Text(
              "Register As...",
              style: TextStyle(color: Colors.red,fontSize: 20),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctor_SignUp()));
                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          child: ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/doctor.png',fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Doctor',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Executive_SignUp()));
                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/executive.png',fit: BoxFit.cover,)),
                        ),
                      ),
                      Text('Sales Executive',style: TextStyle(fontSize: 20),)
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
