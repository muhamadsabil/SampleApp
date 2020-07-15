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
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.pushNamed(context, 'SignIn');
            },
            title: Text(
              'SignIn',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            onTap: () {
              Navigator.pushNamed(context, 'SignUp');
            },
            title: Text(
              'SignUp',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            onTap: () {},
            title: Text(
              'Assignment',
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
