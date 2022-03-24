import "package:flutter/material.dart";
import 'package:square_garden/views/home/home_top_swiper.dart';


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
      body: Container(
        height: 150,
        child: HomeTopSwiper(imgs),
      ),
    );
  }
}
