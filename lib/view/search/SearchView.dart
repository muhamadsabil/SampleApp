import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Page',style: TextStyle(fontWeight: FontWeight.bold),),
          leading: Text('MoZGram', style: TextStyle(
              color: Colors.teal
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Enter Here",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
            ),
          ),
        )
    );
  }
}
