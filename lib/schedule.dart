import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Schedule();
  }
}

class _Schedule extends State<Schedule>
    with AutomaticKeepAliveClientMixin<Schedule> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Text('This is my schedule!');
  }
}
