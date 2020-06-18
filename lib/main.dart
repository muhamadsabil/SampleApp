
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'registration/SignInScreen.dart';
import 'registration/SignUPScreen.dart';
import 'newHome.dart';
import 'donors_List.dart';
import 'services/loading.dart';
import 'SideBar/sideBarHome.dart';
import 'alerDialogue/alertBox.dart';
import 'services/world_time.dart';
import 'services/fetch_api_data.dart';
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
        'Home':(context)=>HomeScreen(),
        'NewHome':(context)=>NewHome(),
        'donors_List':(context)=>Donors(),
//        'worldTime':(context)=>WorldTime(),
        'sideBarHome':(context)=>SideBarHome(),
        'alertBox':(context)=>AlertBox(),
        'worlTime':(context)=>WorldTime(),
        'fetch_api_data':(context)=>Fetch_Api_Data(),
      },
    );
  }
}
