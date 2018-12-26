import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return MaterialApp(
       theme: ThemeData(
         primaryColor: Colors.indigo[900]
       ),
       title:'My Calender',
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: <Widget>[
            Icon(IconData(0xe935, fontFamily: 'MaterialIcons')),
          ],)
        ),
        body: Column(),
      ),
     );
   } 
}