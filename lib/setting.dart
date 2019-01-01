import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Setting();
  }
}

class _Setting extends State<Setting>
    with AutomaticKeepAliveClientMixin<Setting> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Text('This is Setting!');
  }
}
