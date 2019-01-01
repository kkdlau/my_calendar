import 'package:flutter/material.dart';
import './calendar.dart';

final Widget calendar = Calendar();
final Widget otherPage2 = Center(child: Text('this is page 2'));
final Widget otherPage3 = Center(child: Text('this is page 3'));

void main() {
  runApp(MyApp());
}

PageController pageController = PageController(initialPage: 0, keepPage: true);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int _index = 0;

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
        body: PageView(
          onPageChanged: (int pageNumber) {
            setState(() {
              _index = pageNumber;
            });
          },
          controller: pageController,
          children: <Widget>[calendar, otherPage2, otherPage3],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (int pageNumber) {
            setState(() {
              pageController.animateToPage(pageNumber,
                  duration: Duration(milliseconds: 300), curve: Curves.ease);
              _index = pageNumber;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), title: Text('Calendar')),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), title: Text('Today Schedule')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Setting')),
          ],
        ),
      ),
    );
  }
}
