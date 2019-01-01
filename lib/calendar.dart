import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('Built createState()');
    return _Calendar();
  }
}

class _Calendar extends State<Calendar> with AutomaticKeepAliveClientMixin<Calendar> {
  DateTime _selectedDay;

  set selectedTime(DateTime time) {
    setState(() {
      _selectedDay = time;
    });
  }
  @override
    bool get wantKeepAlive => true;
    
  @override
  Widget build(BuildContext context) {
    print('Built build()');
    return Container(
      margin: EdgeInsets.all(15),
      child: CalendarCarousel(
        selectedDateTime: _selectedDay,
        onDayPressed: (DateTime time, List event) {
          selectedTime = time;
        },
      ),
    );
  }
}
