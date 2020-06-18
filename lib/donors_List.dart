import 'package:flutter/material.dart';
import 'data.dart';
import 'data_details.dart';

//void main() {
//  runApp(MaterialApp(
//    home: MyApp(),
//  ));
//}

class Donors extends StatefulWidget {
  @override
  _DonorsState createState() => _DonorsState();
}

class _DonorsState extends State<Donors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'List of Blood donors',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
//        children: details.map((data) => Text('${data.name} - ${data.address} - ${data.phoneNumber}')).toList(),
        children: details
            .map((quote) => data_details(
                  data: quote,
                  delete: () {
                    setState(() {
                      details.remove(quote);
                      print("delete button clicked");
                    });
                    },
                  detailsView: (){
                    setState(() {
                      Navigator.pushNamed(context, 'worlTime');
                    });
                  },
                )).toList(),

      ),


    );
  }

  List<Data> details = [
    Data(
        name: 'Shabil',
        phoneNumber: 9995308848,
        address: 'karuvatt house areekode'),
    Data(
        name: 'Muzz',
        phoneNumber: 9995308848,
        address: 'bbhsbysuh shcbhsbjs shcbsu'),
    Data(
        name: 'Ram',
        phoneNumber: 9995308848,
        address: 'hdbhbcnje hsbdywcyj bcjs'),
    Data(
        name: 'tom',
        phoneNumber: 9995308848,
        address: 'hjbhsbcys  jdus  chsbu'),
  ];
}

