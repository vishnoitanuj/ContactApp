import 'package:flutter/material.dart';
import 'package:flutter_demo/LoginPage.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';

void main(){
  runApp(new ContactlyApp());
}

class ContactlyApp extends StatelessWidget {

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