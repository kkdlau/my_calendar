import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

class Calendar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Calendar();
  }
}

class _Calendar extends State<Calendar> {
  DateTime _selectedDay;

  set selectedTime(DateTime time) {
    setState(() {
      _selectedDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CalendarCarousel(
      selectedDateTime: _selectedDay,
      onDayPressed: (DateTime time, List event) {
        selectedTime = time;
      }
    );
  }
}
