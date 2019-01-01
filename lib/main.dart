import 'package:flutter/material.dart';
import './calendar.dart';
import './schedule.dart';
import './setting.dart';

final Widget calendar = Calendar();
final Widget schedule = Schedule();
final Widget setting = Setting();

void main() {
  runApp(MyApp());
}

final PageController pageController =
    PageController(initialPage: 0, keepPage: true);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int _index = 0;
  List<String> appBarTitle = ['My Calendar', 'Today Schedule', 'Setting'];
  List<IconData> appBarIcon = [
    Icons.calendar_today,
    Icons.schedule,
    Icons.settings
  ];
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
              Icon(appBarIcon[_index]),
              SizedBox(width: 10),
              Text(appBarTitle[_index])
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
          children: <Widget>[calendar, schedule, setting],
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
                icon: Icon(appBarIcon[0]), title: Text(appBarTitle[0])),
            BottomNavigationBarItem(
                icon: Icon(appBarIcon[1]), title: Text(appBarTitle[1])),
            BottomNavigationBarItem(
                icon: Icon(appBarIcon[2]), title: Text(appBarTitle[2])),
          ],
        ),
      ),
    );
  }
}
