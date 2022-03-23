import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "一米菜园",
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
          ),
      home: MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyStickPageState();
}

class MyStickPageState extends State<MyStackPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "一米菜园",
          style: TextStyle(color: Colors.green[50]),
        ),
        // backgroundColor: Colors.green[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        // unselectedItemColor: ,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                Icon(Icons.home),
                Positioned(
                  top: 0,
                  right:0,
                  child:Container(
                    // color:Colors.red,
                    width: 15,
                    alignment: Alignment(0,0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child: Text("7",style:TextStyle(color:Colors.white)),
                  )
                
                )
              ],
            ),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "搜索",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "购物车",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "我的",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Text("Hello World"),
    );
  }
}
