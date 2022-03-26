import "package:flutter/material.dart";

import '../home/timer/TimerWidget.dart';
class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态时钟"),
      ),
      body: new Center(
        child: new TimerWidget(),
      ),
    );
  }
}
