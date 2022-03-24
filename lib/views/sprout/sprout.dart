import "package:flutter/material.dart";


class Sprout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("种植"),
      ),
      body: Center(
        child: Text("种植",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
