import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/Constants.dart';
import 'models/Record.dart';
import 'models/RecordList.dart';
import 'models/RecordService.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState(){
    return HomePage();
  }
}

class _HomePageState extends State<HomePage>{
  final TextEditingController _filter = new TextEditingController();
  RecordList _records = new RecordList();
  RecordList _filteredRecords = new RecordList();

  String _search = "";

  Icon _searchIcon = new Icon(Icons.search);

  Widget _appBarTitle = new Text(appTitle);
}