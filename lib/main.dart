import 'package:flutter/material.dart';
import 'package:square_garden/components/tarbar_item.dart';
import 'package:square_garden/views/home/home.dart';
import 'package:square_garden/views/land/land.dart';
import 'package:square_garden/views/market/market.dart';
import 'package:square_garden/views/my_page/my_page.dart';
import 'package:square_garden/views/sprout/sprout.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "触手可及",
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),
      home: MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyStickPageState();
}

class MyStickPageState extends State<MyStackPage> {
  var _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        // unselectedItemColor: ,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: [
          TabBarItem("setting","配置"),
          TabBarItem("gesture","手势"),
          TabBarItem("module","模块"),
          TabBarItem("controller","控制"),
          TabBarItem("farmer","个人"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Home(),
          Land(),
          Sprout(),
          Market(),
          MyPage(),
        ],
      ),
    );
  }
}
