import 'package:flutter/material.dart';
import 'view/mainDrawer.dart';
import 'view/PhotosViewer.dart';
import 'view/PlpViewer.dart';
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