import 'package:flutter/material.dart';
import './calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[900]),
      title: 'My Calendar',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(IconData(0xe935, fontFamily: 'MaterialIcons')),
              SizedBox(width: 10),
              Text('My Calendar')
            ],
          ),
        ),
        body: Calendar(),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text('Calendar')),
            BottomNavigationBarItem(icon: Icon(Icons.schedule), title: Text('Today Schedule')),
            BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Setting')),
          ],
        ),
      ),
    );
  }
}
