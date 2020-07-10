import 'package:flutter/material.dart';

class PlpViewer extends StatefulWidget {
  @override
  _PlpViewerState createState() => _PlpViewerState();
}

class _PlpViewerState extends State<PlpViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Product list view'),
//      ),
      body: Container(
        child: Products(),
      ),
    );
  }
}
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final list_item = [
    {
      "name" : "image-1",
      "pic" : "assets/2.jpg",
      "price" : 70,
      "old_price": 90
    },
    {
      "name" : "image-1",
      "pic" : "assets/3.jpg",
      "price" : 70,
      "old_price": 90
    },{
      "name" : "image-1",
      "pic" : "assets/4.jpg",
      "price" : 70,
      "old_price": 90
    },{
      "name" : "image-1",
      "pic" : "assets/5.jpg",
      "price" : 70,
      "old_price": 90
    },{
      "name" : "image-1",
      "pic" : "assets/images-6.jpeg",
      "price" : 70,
      "old_price": 90
    },{
      "name" : "image-1",
      "pic" : "assets/images-7.jpeg",
      "price" : 70,
      "old_price": 90
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list_item.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return Product(
          product_name: list_item[index]['name'],
          product_oldPrice: list_item[index]['old_price'],
          product_pic: list_item[index]['pic'],
          product_price: list_item[index]['price'],
        );
        },);
  }
}

class Product extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_price;
  final product_oldPrice;

  Product({
    this.product_name,
    this.product_oldPrice,
    this.product_pic,
    this.product_price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.black12,
              child: ListTile(
                leading: Text(product_name,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            child: Image.asset(product_pic,
            fit: BoxFit.fill,),
          ),


        ),
      ),
    );
  }
}

