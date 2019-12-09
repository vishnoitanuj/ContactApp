import 'package:flutter/material.dart';
import 'package:flutter_demo/HomePage.dart';
import 'package:flutter_demo/LoginPage.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

void main(){
  runApp(new ContactlyApp());
}

class ContactlyApp extends StatelessWidget {

  // Allows us to tag each indivisual page
  final routes = <String, WidgetBuilder>{
    loginPageTag: (context) => LoginPage(),
    homePageTag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,        // This gets rid of Red Debug Label
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
      home: LoginPage(),
    );
  }
}