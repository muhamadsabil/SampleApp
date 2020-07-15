import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/view/ClocloHomePage.dart';
import 'package:newbloodstore1flutterapp/view/PDP.dart';
import 'package:newbloodstore1flutterapp/view/PlpViewer.dart';
import 'package:newbloodstore1flutterapp/view/CartPageView.dart';
import 'mainDrawer.dart';


class ClocloApp extends StatefulWidget {
  @override
  _ClocloAppState createState() => _ClocloAppState();
}
class _ClocloAppState extends State<ClocloApp> {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    PhotosViewer(),
    PDPViewer(),
    CartPage(),
    PlpViewer()
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('PDP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('WishList'),
          ),],
      ),
    );
  }
}
