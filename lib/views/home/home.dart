import "package:flutter/material.dart";
import 'package:square_garden/views/home/home_top_swiper.dart';
import 'timer/TimerWidget.dart';

List<String> imgs = [
  "https://qiniu.yyin.top/square_foot_gardening.png",
  "https://qiniu.yyin.top/square_food_gardening2.png",
  "https://qiniu.yyin.top/20220324235336.png"
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("一米菜园"),
      ),
      // ignore: unnecessary_new
      body: ListView(
        children: [
          Container(
            height: 150,
            child: HomeTopSwiper(imgs),
          ),
          Container(
            height: 50,
            width: 250,
            color: Color.fromARGB(255, 198, 201, 198),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 239, 243, 239),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: '搜索',
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(0, 255, 6, 6)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            color: Colors.green[200],
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2010),
              lastDate: DateTime(2025),
              onDateChanged: (d) {
                print('$d');
              },
            ),
          ),
          
        ],
      ),
    );
  }
}
