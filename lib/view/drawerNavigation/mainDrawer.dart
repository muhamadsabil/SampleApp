import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(accountName: Text('Muhamad sabil'), accountEmail: Text('sabilkaruvatt@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person,color: Colors.white,),
            ),
          ),),

          ListTile(
            leading: Icon(Icons.home,color: Colors.teal,),
            onTap: () {
              Navigator.pushNamed(context, 'SignIn');
            },
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.supervisor_account,color: Colors.teal,),
            onTap: () {
              Navigator.pushNamed(context, 'SignUp');
            },
            title: Text(
              'My account',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.category,color: Colors.teal,),
            onTap: () {},
            title: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.teal,),
            onTap: () {},
            title: Text(
              'Favorites',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.teal,),
            onTap: () {},
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
//          ListTile(
//            leading: Icon(Icons.storage,color: Colors.teal,),
//            onTap: () {
//              Navigator.pushNamed(context, 'db_page');
//            },
//            title: Text(
//              'Database Test',
//              style: TextStyle(
//                fontSize: 20,
//              ),
//            ),
//          ),
          ListTile(
            leading: Icon(Icons.info,color: Colors.teal,),
            onTap: () {},
            title: Text(
              'About',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
