import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images-6.jpeg'),
                        fit: BoxFit.fill,

                    ),
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text('Muhammaed',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),),
                  Text('sabilkaruvatt@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),),

                ],

              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            onTap: (){
              Navigator.pushNamed(context, 'SignIn');
            },
            title: Text('SignIn',
              style: TextStyle(
                fontSize: 20,

              ),),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            onTap: (){
              Navigator.pushNamed(context, 'SignUp');
            },
            title: Text('SignUp',
              style: TextStyle(
                fontSize: 20,

              ),),
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            onTap: (){},
            title: Text('Assignment',
              style: TextStyle(
                fontSize: 20,

              ),),

          ),


        ],
      ),
    );
  }
}
