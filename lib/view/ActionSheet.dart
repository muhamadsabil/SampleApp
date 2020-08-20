import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ActionSheet extends StatefulWidget {
  @override
  _ActionSheetState createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          final action = CupertinoActionSheet(
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Add to favorites'),
                onPressed: () {},
                isDefaultAction: true,
              ),
              CupertinoActionSheetAction(
                child: Text('remove'),
                onPressed: () {},
                isDefaultAction: true,
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancel'),
              onPressed: () {
              },
            ),
          );
          showCupertinoModalPopup(
              context: context,
              builder: (context) => action
          );
        }),
      ),
    );
  }
}
