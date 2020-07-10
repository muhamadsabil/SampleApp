
import 'package:flutter/material.dart';
import 'view/SignInScreen.dart';
import 'view/SignUPScreen.dart';
import 'SampleAppHomePage.dart';
import 'view/alertBox.dart';

import 'networking/ApiBaseHelper.dart';
import 'view/PhotosViewer.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn':(context)=>SignInScreen(),
        'SignUp':(context)=>SignUpScreen(),
        'sideBarHome':(context)=>SideBarHome(),
        'alertBox':(context)=>AlertBox(),
        'photosViewer':(context)=>PhotosViewer()
      },
    );
  }
}
