import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          child: ListView(
            children: <Widget>[
//          Container(
//            height: 300,
//            decoration: BoxDecoration(
//                image: DecorationImage(
//                    fit: BoxFit.fill, image: AssetImage('assets/bg1.png'))),
//          ),
              SizedBox(
                height: 20,
              ),
//          Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: Row(
//              children: <Widget>[
//                IconButton(icon: Icon(Icons.person), onPressed: null),
//                Expanded(
//                    child: Container(
//                        margin: EdgeInsets.only(right: 20, left: 10),
//                        child: TextField(
//                          decoration: InputDecoration(hintText: 'Username'),
//                        )))
//              ],
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: Row(
//              children: <Widget>[
//                IconButton(icon: Icon(Icons.lock), onPressed: null),
//                Expanded(
//                    child: Container(
//                        margin: EdgeInsets.only(right: 20, left: 10),
//                        child: TextField(
//                          decoration: InputDecoration(hintText: 'Password'),
//                        ))),
//              ],
//            ),
//          ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,10,40,0),
                child: Container(
                  height: 60,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "username",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,10,40,10),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "password",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(40,10,40,0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'clocloApp');
                      },
                      color: Color(0xFF00a79B),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'SignUp');
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'SIGN UP',
                            style: TextStyle(
                                color: Colors.teal, fontWeight: FontWeight.bold),
                          )
                        ]),
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