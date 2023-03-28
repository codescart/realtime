import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:realtime/sales_executive/bottom_navbar.dart';
class Executive_SignUp extends StatefulWidget {
  const Executive_SignUp({Key? key}) : super(key: key);

  @override
  State<Executive_SignUp> createState() => _Executive_SignUpState();
}

class _Executive_SignUpState extends State<Executive_SignUp> {
  ImagePicker picker = ImagePicker();
  XFile? image;
  ImagePicker adharcard = ImagePicker();
  XFile? aadhar;
  // final TextEditingController _state =TextEditingController();

  String state = 'Choose State';
  var states = [
    'Choose State',
    'Uttar Pradesh',
    'Bihar',
    'Jharkhand',
    'Goa',
  ];

  String district = 'Choose district';
  var districtes = [
    'Choose district',
    'lucknow',
    'barabanki',
    'kanpur',
    'gonda',
  ];

  String city = 'Choose city';
  var cities = [
    'Choose city',
    'lucknow',
    'gorakhpur',
    'kanpur',
    'gonda',
  ];

  String year = 'Choose year';
  var years = [
    'Choose year',
    '1980',
    '1981',
    '1982',
    '1983',
    '1984',
    '1985',
    '1986',
    '1987',
    '1988',
    '1989',
    '1990',
  ];

  String Designation = 'Choose Designation';
  var Designations = [
    'Choose Designation',
    'Sales executive',
    'First line manager',
    'Second line manager',
    'Third line manager',
    'Country manager',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      appBar: AppBar(
        backgroundColor: Color(0xffe4f2fd),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Sales Executive',style: TextStyle(color: Colors.black,fontSize: 20),),
        actions: [
          Container(
            width: 90,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/executive_1.png'),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0.5,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/user.png"),
                  child: image != null
                      ? CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(
                        File(image!.path),
                      ))
                      : CircleAvatar(
                    radius: 0,
                  ),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () async {
                      image =
                      await picker.pickImage(source: ImageSource.gallery);
//image = await picker.pickImage(source: ImageSource.camera);
                      setState(() {
                        XFile;
                      });
                    },
                    child: Text("Upload Profile")),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 10,left: 10),
                child: Text('Full Name',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    suffixIcon: Icon(Icons.person),
                    hintText: 'Enter Full Name',

                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Mobile Number',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefix: Text('+91 ',style: TextStyle(color: Colors.black),),
                    suffixIcon: Icon(Icons.mobile_friendly),
                    hintText: 'Enter Mobile No.',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Email id',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Enter Email id',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Employee Id',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  // maxLength: 12,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 20,left: 20,right: 10),
                    filled: true,
                    counterText: '',
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Employee Id no',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffix: TextButton(
                        onPressed: () async {
                          aadhar =
                          await adharcard.pickImage(source: ImageSource.gallery);
//image = await picker.pickImage(source: ImageSource.camera);
                          setState(() {
                            XFile;
                          });
                        },
                        child: Text("Upload Id")),
                  ),
                ),
              ),

          aadhar!=null?Container(
                height: 200,
                width: MediaQuery.of(context).size.width*.9,
                child: Image.file(
                  File(aadhar!.path),
                )
              ):Container(),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Company Name',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Enter Company Name',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Division',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Enter Division Name',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Country',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  readOnly: true,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    // prefixIcon: Icon(Icons.person),
                    hintText: 'India',
                    hintStyle: TextStyle(color: Colors.black),
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('HeadQuarter City',style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(
                        width: 1, color: Color(0xff4181eb)
                    )
                ),
                child: DropdownButtonHideUnderline(
                  child:DropdownButton(
                    items: cities
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value:  item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ))
                        .toList(),
                    value: city,
                    onChanged: (String? newVal) {
                      setState(() {
                        city = newVal!;
                        print(city);
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('State',style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(
                        width: 1, color: Color(0xff4181eb)
                    )
                ),
                child: DropdownButtonHideUnderline(
                  child:DropdownButton(
                    items: states
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value:  item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ))
                        .toList(),
                    value: state,
                    onChanged: (String? newVal) {
                      setState(() {
                        state = newVal!;
                        print(state);
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('District',style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(
                        width: 1, color: Color(0xff4181eb)
                    )
                ),
                child: DropdownButtonHideUnderline(
                  child:DropdownButton(
                    items: districtes
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value:  item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ))
                        .toList(),
                    value: district,
                    onChanged: (String? newVal) {
                      setState(() {
                        district = newVal!;
                        print(district);
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Year(in which you join pharma sales)',style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(
                        width: 1, color: Color(0xff4181eb)
                    )
                ),
                child: DropdownButtonHideUnderline(
                  child:DropdownButton(
                    items: years
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value:  item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ))
                        .toList(),
                    value: year,
                    onChanged: (String? newVal) {
                      setState(() {
                        year = newVal!;
                        print(year);
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Year of Experience',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 15),
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Enter year of experience',
                    // hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xff4181eb)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('Designation',style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(
                        width: 1, color: Color(0xff4181eb)
                    )
                ),
                child: DropdownButtonHideUnderline(
                  child:DropdownButton(
                    items: Designations
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value:  item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ))
                        .toList(),
                    value: Designation,
                    onChanged: (String? newVal) {
                      setState(() {
                        Designation = newVal!;
                        print(Designation);
                      });
                    },
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 100,top: 30,bottom: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Navbar()));
                  },
                  child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.white,),))
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
