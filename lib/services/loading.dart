import 'package:flutter/material.dart';
import 'world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String timeData = 'Loading...';
  void setUpWorldTime() async{
//    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
//    await instance.getTime();
    setState(() {
//      timeData = instance.time;
    });
  }
  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of users'),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Text('$timeData'),
      ),
    );
  }
}

