import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _currentIndex = 0;

  final tabs = [
        Center(child: Text('This is home'),),
        Center(child: Text('This is search'),),
        Container(child: Text('This is wish list'),
        color: Colors.grey,
          height: 500,
          width: 400,
        ),
        Center(child: Text('This is profile'),),

  ];

  Widget build(BuildContext context) {
    return Scaffold(

//      body: Container(
//        height: double.infinity,
//        decoration: BoxDecoration(
//            image: DecorationImage(
//                fit: BoxFit.cover,
//                image:
//                AssetImage('assets/bg2.jpg'))
//        ),
//        child: Padding(
//          padding: const EdgeInsets.only(top: 25),
//          child: Stack(
//            children: <Widget>[
//              Positioned(
//                top: 5,
//                child: Row(children: <Widget>[
//                  IconButton(
//                    icon: Icon(Icons.arrow_back_ios,
//                    color: Colors.white,),
//                    onPressed: (){
//                      Navigator.pop(context);
//                    },
//                  ),
//                  Text('back',
//                  style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.white,
//                    fontWeight: FontWeight.bold
//
//                  ),),
//
//                ],),
//
//              ),
//            ],
//          ),
//        ),
//      ),
      appBar: AppBar(
        title: Text('My Home Page'),
      ),

      body: tabs[_currentIndex],


//      floatingActionButton: FloatingActionButton(
//        child: Center(child: Text('click me')),
//        onPressed: (){
//          Navigator.pushNamed(context, 'donors_List');
//        },
//      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
              backgroundColor: Colors.lightGreen
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('search'),
                backgroundColor: Colors.lightGreen
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('wishList'),
                backgroundColor: Colors.lightGreen
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account),
                title: Text('account'),
                backgroundColor: Colors.lightGreen
            ),
          ],
        onTap: (index){
          setState(() {
              _currentIndex = index;
          });
          },
      ),

    );
  }
}