import 'package:flutter/material.dart';

class MessagePopup extends StatefulWidget {
  const MessagePopup({Key? key}) : super(key: key);

  @override
  State<MessagePopup> createState() => _MessagePopupState();
}

class _MessagePopupState extends State<MessagePopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Color(0xffe4f2fd),
      child: Container(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Add to list',style: TextStyle(fontSize: 25),),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextFormField(
              //     maxLines: 5,
              //     keyboardType: TextInputType.name,
              //     style: TextStyle(fontSize: 18),
              //     // cursorColor: Colors.white,
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Color(0xffe4f2fd),
              //       hintText: 'write your message...',
              //       // hintStyle: TextStyle(color: Colors.white),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide:  BorderSide(width: 1, color: Color(0xff4181eb)),
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderSide:
              //         BorderSide(width: 1, color: Color(0xff4181eb)),
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //     ),
              //   ),
              // ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Add',style: TextStyle(fontSize: 20,color: Colors.white,),),
                        Icon(Icons.add,color: Colors.white,size: 15,),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
