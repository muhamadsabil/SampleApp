import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/view/GetJockerCategories.dart';
import 'SideBar/mainDrawer.dart';
import 'view/PhotosViewer.dart';
class SideBarHome extends StatefulWidget {
  @override
  _SideBarHomeState createState() => _SideBarHomeState();
}
class _SideBarHomeState extends State<SideBarHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Photos stuff',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "roman",
          fontSize: 20,
        ),),
      ),
      drawer: MainDrawer(
      ),
      body: PhotosViewer(),
    );
  }
}