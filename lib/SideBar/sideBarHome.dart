import 'package:flutter/material.dart';
import 'mainDrawer.dart';
import 'horizontal_ListView.dart';
class SideBarHome extends StatefulWidget {
  @override
  _SideBarHomeState createState() => _SideBarHomeState();
}

class _SideBarHomeState extends State<SideBarHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New home page'),
      ),
      drawer: MainDrawer(
      ),

    body: Container(
      child: new ListView(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(10),
          child: new Text('Categories',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          ),
          HorizontalList(),
          SizedBox(height: 100,),
          Container(
            color: Colors.grey[100],
            width: 100,
            height: 50,
            child: FlatButton.icon(
                  label: Text('Donors List'),
                  textColor: Colors.red,
                  icon: Icon(Icons.album),
                  onPressed: (){
                    Navigator.pushNamed(context, 'donors_List');
                  },
                ),
          ),
          SizedBox(height: 50,),
            Container(
              width: 100,
              height: 50,
              color: Colors.lightGreen,
              child: RaisedButton(
                child: Text('Show alert box',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                onPressed: (){
                  Navigator.pushNamed(context, 'alertBox');
                  print('Clicked alertbox button');
                },
              ),
            ),
          SizedBox(height: 50,),
          Container(
            width: 100,
            height: 50,
            color: Colors.lightGreen,
            child: RaisedButton(

              child: Text('Friends List',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              onPressed: (){
                Navigator.pushNamed(context, 'fetch_api_data');
              },
            ),
          ),
        ],
      ),
    ),

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
