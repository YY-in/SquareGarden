import 'package:square_garden/components/http/http_request.dart';
import 'dart:convert' as convert;
import "package:flutter/material.dart";

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("集市"),
      ),
      body: ListView(
        children: [
          SearchBox(),
          
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                borderSide: BorderSide(color: Color.fromARGB(0, 255, 6, 6)),
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
        ),
      ),
    );
  }
}

class MarketContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MarketContentState();
}

class _MarketContentState extends State<MarketContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    HttpRequest.request("https://api.paugram.com/netease/?id=517567145")
        .then((res) {
      Map<String, dynamic> music = convert.jsonDecode(res.data);
      print(music);
      print(music.runtimeType);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Text("");
  }
}
