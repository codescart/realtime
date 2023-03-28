import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  ImagePicker picker = ImagePicker();
  XFile? image;

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
        title: Text('Update Profile',style: TextStyle(color: Colors.black,fontSize: 20),),
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
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
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
                  ],
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
                    child: Text("Edit Profile Picture")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10),
                child: Text(
                  'First Name',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  hintText: 'First Name',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Last Name',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  hintText: 'Last Name',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  prefixIcon: Icon(
                    Icons.mobile_friendly,
                    color: Colors.grey,
                  ),
                  hintText: 'Enter Mobile No.',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Email id',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  hintText: 'Enter Email id',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Company Name',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  hintText: 'Enter Company Name',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Division',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  hintText: 'Enter Division Name',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Country',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 20,
                ),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
// prefixIcon: Icon(Icons.person),
                  hintText: 'Country',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'State',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
// alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(width: 1, color: Color(0xff4181eb))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: states
                        .map((item) => DropdownMenuItem<String>(
                              value: item.toString(),
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
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'City',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
// alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(width: 1, color: Color(0xff4181eb))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: cities
                        .map((item) => DropdownMenuItem<String>(
                              value: item.toString(),
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
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'District',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
// alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(width: 1, color: Color(0xff4181eb))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: districtes
                        .map((item) => DropdownMenuItem<String>(
                              value: item.toString(),
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
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Year(in which you join pharma sales)',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
// alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(width: 1, color: Color(0xff4181eb))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: years
                        .map((item) => DropdownMenuItem<String>(
                              value: item.toString(),
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
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Year of Experience',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffe4f2fd),
                  hintText: 'Enter year of experience',
// hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff4181eb)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  'Designation',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
// alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe4f2fd),
                    border: Border.all(width: 1, color: Color(0xff4181eb))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: Designations.map((item) => DropdownMenuItem<String>(
                          value: item.toString(),
                          child: Text(
                            item.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        )).toList(),
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
                padding: const EdgeInsets.only(left: 100, top: 30, bottom: 30),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
