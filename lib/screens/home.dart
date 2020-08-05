import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40.0,
          child: Center(
            child: Image.asset("images/youtubeLogo.png"),
          ),           
        ),
        elevation:  0,
        backgroundColor: Colors.blueGrey[200],
      ),
    );
  }
}