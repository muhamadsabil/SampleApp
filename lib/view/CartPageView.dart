import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var sizes = ["UK6","UK7","UK8","UK9"];
  var qty = ["1","2","3","4"];
  var currentItemSelected = "UK6";
  var qtySelected = "2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Shopping Bag',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 300,
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://chkokkobanners.azureedge.net/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_6.jpg",
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('LEVIS SHIRT',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 20
                            ),),
                            SizedBox(height: 10,),
                            Text('Mens solid casuals \n X6 double quality \n and 100% Cotton',style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Roboto',
                                letterSpacing: 1,
                                fontSize: 15
                            ),),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                Text('Size',style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Roboto',
                                    fontSize: 12
                                ),),
                                SizedBox(width: 10,),
                                Container(
                                  color: Colors.white,
                                  width: 60,
                                  height: 30,
                                  child: DropdownButton<String>(
                                    items: sizes.map((String dropDownString){
                                      return DropdownMenuItem<String>(
                                        value: dropDownString,
                                        child: Text(dropDownString),
                                      );
                                    }).toList(),
                                    onChanged: (String newValueChanged){
                                      _onDropdownItemSelected(newValueChanged);
                                    },
                                    value: currentItemSelected,
//                                dropdownColor: Colors.teal,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text('Qty',style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Roboto',
                                    fontSize: 12
                                ),),
                                SizedBox(width: 10,),
                                Container(
                                  color: Colors.white,
                                  width: 40,
                                  height: 30,
                                  child: DropdownButton<String>(
                                    items: qty.map((String dropDownString){
                                      return DropdownMenuItem<String>(
                                        value: dropDownString,
                                        child: Text(dropDownString),
                                      );
                                    }).toList(),
                                    onChanged: (String newValueChanged){
                                      _onQtySelected(newValueChanged);
                                    },
                                    value: qtySelected,
//                                dropdownColor: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('AED 559',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'

                                ),),
                                SizedBox(width: 10,),
                                Text('AED 799',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Roboto',
                                    color: Colors.redAccent,
                                    decoration: TextDecoration.lineThrough

                                ),),
                              ],
                            ),
                              ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 2,
                height: 2,
                color: Colors.grey[150],
                indent: 15,
                endIndent: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 32,
                      color: Colors.white,
                      child: MaterialButton(
                        child: Center(
                          child: Text('REMOVE',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                          ),),
                        ),
                      ),
                    ),
//                  SizedBox(width: 10,),
//                  Divider(
//                    thickness: 30,
//                    height: 20,
//                    color: Colors.grey[150],
//                    indent: 200,
//                    endIndent: 50,
//                  ),
                     SizedBox(width: 30,),
                     Container(
                      height: 32,
                      width: 150,
                      color: Colors.white,
                      child: MaterialButton(
                        child: Center(
                          child: Text('MOVE TO WISHLIST',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
  void _onDropdownItemSelected(String newVlaueSelected){
    setState(() {
      this.currentItemSelected = newVlaueSelected;
    });
  }
  void _onQtySelected(String newQtySelected){
    setState(() {
      this.qtySelected = newQtySelected;
    });
  }
}
