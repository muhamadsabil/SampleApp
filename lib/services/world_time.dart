import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class WorldTime extends StatefulWidget {

  int userId;
  String title;
  WorldTime({ this.userId, this.title});

  @override
  _WorldTimeState createState() => _WorldTimeState();
}

class _WorldTimeState extends State<WorldTime> {
  Future<void> getTime() async {
    Response response = await get(Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
    headers: {
      "Accept" : "application/json"
    });
//    Map data = jsonDecode(response.body);
    print(response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new RaisedButton(onPressed: getTime,
          child: new Text('Get data'),),

      ),
    );
  }
}

