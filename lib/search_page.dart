import 'package:flutter/material.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  State<Search_Page> createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  String dropdownvalue = 'Sort By';
  var items = [
    'Sort By',
    'By Name',
    'By City',
    'By District',
    'By State',
    'By Specialist',

  ];
  String dVal = 'Filter';
  var itemsA = [
    'Filter',
    'Diagonistic',
    'Physician',
    'Surgeon',
    'Surgeon',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f2fd),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffe4f2fd),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7),
              hintText: 'search doctor name',
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),

            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  // alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffe4f2fd),
                      border: Border.all(
                          width: 1, color: Color(0xff4181eb))),
                  child:
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.arrow_drop_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 10),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  // alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffe4f2fd),
                      border: Border.all(
                          width: 1, color: Color(0xff4181eb))),
                  child:
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dVal,

                      // Down Arrow Icon
                      icon: const Icon(Icons.arrow_drop_down),

                      // Array list of items
                      items: itemsA.map((String itemsA) {
                        return DropdownMenuItem(
                          value: itemsA,
                          child: Text(
                            itemsA,
                            style: TextStyle(fontSize: 10),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

