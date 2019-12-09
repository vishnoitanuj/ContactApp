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
  // implement listener for searches
  final TextEditingController _filter = new TextEditingController();

  // To keep the state of our raw data.
  RecordList _records = new RecordList();

  // To keep the state of our searched data.
  RecordList _filteredRecords = new RecordList();

  // Validate our searches
  String _searchText = "";

  // Icon Representation
  Icon _searchIcon = new Icon(Icons.search);

  Widget _appBarTitle = new Text(appTitle);

  @override
  void initState(){     //empty our records data and get fresh data from json file
    super.initState();

    _records.records = new List();
    _filteredRecords.records = new List();

    _getRecords();
  }

  void _getRecords() async {
    RecordList records = await RecordService().loadRecords();
    setState(() {
      for (Record record in records.records){
        this._records.records.add(record);
        this._filteredRecords.records.add(record);
      }
    });
  }

  @override
  Widget build(BuildContext context) {  //Scaffold as main UI structure
    return Scaffold(
      appBar: _buildBar(context),
      backgroundColor: appDarkGreyColor,
      body: _buildList(context),
      resizeToAvoidBottomInset: false,
    );
  }


}
