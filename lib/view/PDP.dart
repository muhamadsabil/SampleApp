import 'package:flutter/material.dart';

class PDPViewer extends StatefulWidget {
  @override
  _PDPViewerState createState() => _PDPViewerState();
}

class _PDPViewerState extends State<PDPViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                    'https://chkokkobanners.azureedge.net/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_6.jpg'),
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    Text('Product title',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'
                    ),),
                    SizedBox(width: 140,),
                    Text('AED 457',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.redAccent,
                    ),)
                  ],
                ),
                SizedBox(height: 10,),
                Text('Product subtitle.......',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto'
                ),),
              SizedBox(height: 10,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text('S'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text('M'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text('L'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text('XL'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 60,
                    color: Colors.teal,
                    onPressed: (){},
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
