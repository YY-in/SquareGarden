import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "一米菜园",
      home: MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStickPageState();
}

class _MyStickPageState extends State<MyStackPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("一米菜园"),
          backgroundColor:Color.fromARGB(255, 13, 218, 115) ,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: "首页",
              backgroundColor: Color.fromARGB(255, 13, 218, 115),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              label: "搜索",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,color: Colors.black,),
              label: "购物车",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color: Colors.black,),
              label: "我的",
            ),
          ],
                ),
        body: Text("Hello World"),
    );
  }

}

