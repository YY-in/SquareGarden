import "package:flutter/material.dart";
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:square_garden/views/home/home_top_swiper.dart';
import 'timer/TimerWidget.dart';

List<String> imgs = [
  "https://qiniu.yyin.top/20220325141726.png",
  "https://qiniu.yyin.top/ca81f84dbfc226c92edbdfa0bf8ac92.jpg",
  "https://qiniu.yyin.top/20220325133303.png"
];

List<Elements> _element = [
  Elements(id: 1, name: "使用左手"),
  Elements(id: 2, name: "使用右手"),
  Elements(id: 3, name: "启用力反馈"),
];

class Elements {
  final int id;
  final String name;

  Elements({
    required this.id,
    required this.name,
  });
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("身临其境"),
      ),
      // ignore: unnecessary_new
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            height: 150,
            child: HomeTopSwiper(imgs),
          ),
          MultiSelectDialogField(
            buttonText: Text("手套基础配置"),
            title: Text("请选择："),
            items: _element.map((e) => MultiSelectItem(e, e.name)).toList(),
            listType: MultiSelectListType.CHIP,
            onConfirm: (values) {},
          ),
          Padding(padding:EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: new Text('蓝牙'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 250,
                            height: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '蓝牙左手名称：',
                                  labelStyle: TextStyle(color: Colors.red)),
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 100.0,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '蓝牙右手名称：',
                                  labelStyle: TextStyle(color: Colors.red)),
                            ),
                          ),
                        
                        ],
                      );
                    },
                  ).then((val) {
                    print(val);
                  });
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: new Text('USB串口'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 250,
                            height: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '蓝牙左手名称：',
                                  labelStyle: TextStyle(color: Colors.red)),
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 100.0,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '蓝牙右手名称：',
                                  labelStyle: TextStyle(color: Colors.red)),
                            ),
                          ),
                        
                        ],
                      );
                    },
                  ).then((val) {
                    print(val);
                  });
                },
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
