
import 'package:flutter/material.dart';
import 'view/registration/SignInScreen.dart';
import 'view/registration/SignUPScreen.dart';
import 'view/bottomNav/ClocloApp.dart';
import 'package:newbloodstore1flutterapp/view/accountPage/AccountPage.dart';

import 'DataBase_Repo/db_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn':(context)=>SignInScreen(),
        'SignUp':(context)=>SignUpScreen(),
        'clocloApp':(context)=>ClocloApp(),
        'db_page':(context)=>DBTestPage(),
        'accountpage':(context)=>MyAccount(),
      },
    );
  }
}
