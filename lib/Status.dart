import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<String> text = [];
  TextEditingController _textcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller:_textcontroller ,
            decoration:InputDecoration(
              hintText: 'type here',
              border: OutlineInputBorder(),
            )

          ),
          MaterialButton(onPressed:(){
           setState(() {
             text.add(_textcontroller.text);
             _textcontroller.clear();
           });
          },
          color: Colors.purple,
          height: 5,
          child: Text("press me", style: TextStyle(fontSize: 25),),


          ),
          Text(text.toString())

        ],
      )

    );
  }
}
