import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[900]),
      title: 'My Calender',
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(IconData(0xe935, fontFamily: 'MaterialIcons')),
            SizedBox(width: 10),
            Text('My Calendar')
          ],
        )),
        body: CalendarCarousel(
        ),
      ),
    );
  }
}
