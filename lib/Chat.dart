import 'package:flutter/material.dart';

class Chat extends StatefulWidget {

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List Buttonlist=['hi'];
  final _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          child: ListView.builder(
            itemCount: Buttonlist.length,
              itemBuilder: (BuildContext context , int index){
              return Todolist(text: Buttonlist[index], color:Colors.purpleAccent);



          })
        ),
    TextField(
    controller: _controller,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'type here',

    ),
    ),
    MaterialButton(onPressed:(){
    setState(() {
    Buttonlist.add(_controller.text);
    _controller.clear();
    });
    },
    color: Colors.purple,
    height: 5,
    child: Text("press me", style: TextStyle(fontSize: 25),),
    )],
    );
  }
}
class Todolist extends StatelessWidget {

  final text;
  final color;


  Todolist({required this.text,required this.color});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

           margin:EdgeInsets.all(10),
           padding: EdgeInsets.all(30),
           child: Text(text, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 ),),
          decoration: BoxDecoration(
        color: color ,
        borderRadius: BorderRadius.all(Radius.circular(10)),

        )
        ),






      ],
    );
  }
}
