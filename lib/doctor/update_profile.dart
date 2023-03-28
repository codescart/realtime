import 'package:flutter/material.dart';
import 'package:realtime/imagepeaker.dart';
class UpdateProfile extends StatefulWidget {
  final String? doctorName;
  UpdateProfile({ this.doctorName});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final TextEditingController _state =TextEditingController();

  String dropdownvalue = 'Choose State';
  var items = [
    'Choose State',
    'Uttar Pradesh',
    'Bihar',
    'Jharkhand',
    'Goa',
  ];

  String city = 'Choose city';
  var cities = [
    'Choose city',
    'lucknow',
    'gorakhpur',
    'kanpur',
    'gonda',
  ];

  String district = 'Choose district';
  var districtes = [
    'Choose district',
    'lucknow',
    'barabanki',
    'kanpur',
    'gonda',
  ];


  final TextEditingController _doctorname=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),

      appBar: AppBar(
        backgroundColor: Color(0xffe4f2fd),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Update Profile',style: TextStyle(color: Colors.black,fontSize: 25),),
        actions: [
          Container(
            height: 60,
            width: 90,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/doctor_1.png'),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0.5,
        // toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 120),
                child: ImagePeaker(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10,left: 10),
                child: Text('First Name',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _doctorname..text=widget.doctorName!,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.person),
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
                child: Text('Middle Name',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Middle Name',
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
                child: Text('Last Name',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18,),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Last Name',
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
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
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
                child: Text('Registration No.',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.app_registration),
                    hintText: 'Enter Registration no.',
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
                child: Text('Qualification',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Enter Qualification',
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
                child: Text('Speciality',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    prefixIcon: Icon(Icons.folder_special),
                    hintText: 'Speciality',
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
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    // prefixIcon: Icon(Icons.person),
                    hintText: 'Country',
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
                    items: items
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
                    value: dropdownvalue,
                    onChanged: (String? newVal) {
                      setState(() {
                        dropdownvalue = newVal!;
                        print(dropdownvalue);
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text('City',style: TextStyle(fontSize: 15),),
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
                padding: const EdgeInsets.only(top: 30,bottom: 10,left: 10),
                child: Text('Hospital/clinic address',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 100,
                child: TextFormField(
                  maxLines: 2,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 18),
                  // cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffe4f2fd),
                    hintText: 'Hospital/clinic address',
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
                padding: const EdgeInsets.only(left: 100,top: 30,bottom: 30),
                child: InkWell(
                  onTap: (){},
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
