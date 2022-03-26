import 'package:square_garden/components/http/http_request.dart';

import "package:flutter/material.dart";

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("集市"),
      ),
      body: Center(
        child: MarketContent(),
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

    HttpRequest.request("https://api.paugram.com/netease/?id=517567145");
  }

  @override
  Widget build(BuildContext context) {
    return new Text("");
  }
}
