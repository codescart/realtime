import 'package:flutter/material.dart';

class RemoveList extends StatefulWidget {
  const RemoveList({Key? key}) : super(key: key);

  @override
  State<RemoveList> createState() => _RemoveListState();
}

class _RemoveListState extends State<RemoveList> {
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
              Text('Remove from list',style: TextStyle(fontSize: 20),),
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
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Remove',style: TextStyle(fontSize: 20,color: Colors.white,),),
                        Icon(Icons.remove,color: Colors.white,size: 15,),
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
