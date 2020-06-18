import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class Fetch_Api_Data extends StatefulWidget {
  @override
  _Fetch_Api_DataState createState() => _Fetch_Api_DataState();
}

class _Fetch_Api_DataState extends State<Fetch_Api_Data> {

  Map data;
  List userData;

  Future getData() async {
    http.Response response = await http.get("https://reqres.in/api/users?page=2");
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Friends List"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(

        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(userData[index]["avatar"]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${userData[index]["first_name"]} ${userData[index]["last_name"]}",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}