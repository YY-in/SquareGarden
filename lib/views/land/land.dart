import "package:flutter/material.dart";


class Land extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("家园"),
      ),
      body: Center(
        child: Text("家园",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
