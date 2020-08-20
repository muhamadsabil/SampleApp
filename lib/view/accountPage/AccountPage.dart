import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('MoZGram', style: TextStyle(
            color: Colors.teal
        ),),
//        automaticallyImplyLeading: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'My Account Info',style: TextStyle(
//            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.teal,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/john.png'))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+009988776655',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'john@wix.com',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
                  child: ListTile(
                    leading: Text('Followers',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Account settings',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Account info',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Posts & Sharings',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Edit profile',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Help Centre',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  height: 50,
//                  color: Colors.white,
                  child: ListTile(
                    leading: Text('Notifications',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
