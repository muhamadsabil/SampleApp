import 'package:flutter/material.dart';
import 'data.dart';

class data_details extends StatelessWidget {
  @override
  final Function delete;
  final Function detailsView;
  final Data data;
  data_details({this.data, this.delete, this.detailsView});

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              data.name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              data.address,
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Text(
                  data.phoneNumber.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete,color: Colors.redAccent,),
                  label: Text('delete',style: TextStyle(color: Colors.redAccent),),
                ),

              ],
            ),
//          SizedBox(height: 20,),
//          Text(
//            data.phoneNumber,
//            style: TextStyle(
//              fontSize: 20,
//              color: Colors.blue,
//
//            ),
//          ),
          ],
        ),
      ),
    );
  }
}
