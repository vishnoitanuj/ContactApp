import 'RecordList.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class RecordService {

  //To use asynchronous communication in dart we use Future. Future objects(futures)
  //represent the results of asynchronous operations
  Future<String> _loadRecordAsset() async {
    return await rootBundle.loadString('assets/data/records.json');
  }


  //parses records.json and map into a RecordList object, holding a list of Record objects
  Future<RecordList> loadRecords() async {
    String jsonString = await _loadRecordAsset();
    final jsonResponse = json.decode(jsonString);
    RecordList records = new RecordList.fromJson(jsonResponse);
    return records;
  }
}