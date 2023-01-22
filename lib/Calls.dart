import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  final List buttonlist=[
    "A","N",
  ];

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  final List buttonlist=[
    "A","N",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: buttonlist.length,
            itemBuilder: (BuildContext context, int index){
            return Mybuttons(text: buttonlist[index], color: Colors.purple, textcolor: Colors.white);
            }
          ),


          ),

      ],
    );


  }
}
class Mybuttons extends StatelessWidget {

  final text;
  final color;
  final textcolor;
  Mybuttons({ required this.text, required this.color ,required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        margin:EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(10))


    ),

    child: Center(child: Text(text , style: TextStyle(color: textcolor, fontSize: 20, fontWeight: FontWeight.w600),),)
    );
  }
}
