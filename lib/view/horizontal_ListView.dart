import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/1.png',
            imageCaption: 'Boys',
          ),
          Category(
            imageLocation: 'assets/2.jpg',
            imageCaption: 'Gents',
          ),
          Category(
            imageLocation: 'assets/3.jpg',
            imageCaption: 'Girls',
          ),
          Category(
            imageLocation: 'assets/4.jpg',
            imageCaption: 'Babys',
          ),
          Category(
            imageLocation: 'assets/5.jpg',
            imageCaption: 'Toys',
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  @override

  final String imageLocation;
  final String imageCaption;
  Category({ this.imageLocation, this.imageCaption}) ;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(onTap: () {},

        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(imageLocation,
            width: 100,height: 80,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption),
            )
          ),
        ),

      ),
    );
  }
}
