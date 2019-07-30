import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BackgroundChanger());


class BackgroundChanger extends StatefulWidget {
  BackgroundChanger({Key key}) : super(key: key);

  _BackgroundChangerState createState() => _BackgroundChangerState();
}

class _BackgroundChangerState extends State<BackgroundChanger> {
 
var _bgColor;

List colors = [
  Colors.amber,
  Colors.green,
  Colors.white,
  Colors.black,
  Colors.yellow,
  Colors.deepPurple
];

@override
  void initState() {
    super.initState();
    _bgColor = Colors.green;
  }

void changeColor(){

var random = Random().nextInt(5);

setState(() {
  _bgColor = colors[random];
});


}

  @override
  Widget build(BuildContext context) {
    return Container(
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         title: "Stateful app",
         home: Scaffold(
           backgroundColor: _bgColor,
           body: Center(
             child: RaisedButton(
               onPressed: (){
                 changeColor();
               },
               child: Text("Change Background"),
             ),
           ),
           appBar: AppBar(
             title: Text("Background changer"),
           ),
         ),
       ),
    );

  }
}