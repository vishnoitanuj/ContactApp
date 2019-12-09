import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

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
        primaryColor: appDarkGretColor,
      ),
    );
  }
}