import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/view/home/ClocloHomePage.dart';
import 'package:newbloodstore1flutterapp/view/followersPage/PlpViewer.dart';
import 'package:newbloodstore1flutterapp/view/search/SearchView.dart';
import 'package:newbloodstore1flutterapp/view/accountPage/AccountPage.dart';
import 'package:newbloodstore1flutterapp/view/weather/WeatherView.dart';
import 'package:newbloodstore1flutterapp/view/location/LocationView.dart';


class ClocloApp extends StatefulWidget {
  @override
  _ClocloAppState createState() => _ClocloAppState();
}
class _ClocloAppState extends State<ClocloApp> {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    PhotosViewer(),
    SearchPage(),
    PlpViewer(),
    MyAccount(),
    WeatherView(),
    LocationView(),
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
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Followers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            title: Text('Weather'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('My Location'),
          ),
        ],
      ),
    );
  }
}
