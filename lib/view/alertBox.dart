import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
//        automaticallyImplyLeading: false,
        title: Text('Dialogue Box',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor: Color(0xFF333333),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Click Me'),
          onPressed: () {
            showAboutDialog(
              context: context,
//              applicationIcon: Icon(Icons.airport_shuttle),
              applicationName: 'Sample Alert Box By Flutter ',
              applicationLegalese: ' Flutter Alert Box',
            );
          },
        ),
      ),
    );
  }
}

