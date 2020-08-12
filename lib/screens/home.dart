import 'package:favorite_youtube/delegates/data_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40.0,
          child: Image.asset("images/youtubeLogo.png"),        
        ),
        elevation:  0,
        backgroundColor: Colors.blueGrey[200],
        actions: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text('0'),
          ),
          IconButton(
            icon: Icon(Icons.star), 
            onPressed: () {

            }
          ),
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () async {
              String result = await showSearch(context: context, delegate: DataSearch());
            }
          ),
        ],
      ),
      body: Container(),
    );
  }
}