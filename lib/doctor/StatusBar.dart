import 'package:flutter/material.dart';

class StatusBar extends StatefulWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  String dropdownvalue = 'Select Status';
  var items = [
    'Select Status',
    'I will not meet today',
    'I will meet at 4pm',
    'Busy in Surgery',
    'Available',
    'Others',
  ];
  @override
  var pankaj=true;
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 10, right: 10),
      // alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffe4f2fd),
          border: Border.all(
              width: 1, color: Color(0xff4181eb))),
      child:
      pankaj==false? TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 17),

          border: InputBorder.none
        ),

      ):
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
              if(newValue == 'Others'){
                pankaj=false;
              }
            });
          },
        ),
      ),
    );
  }
}