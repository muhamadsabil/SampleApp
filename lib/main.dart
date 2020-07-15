
import 'package:flutter/material.dart';
import 'view/SignInScreen.dart';
import 'view/SignUPScreen.dart';
import 'view/ClocloApp.dart';
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
      },
    );
  }
}
