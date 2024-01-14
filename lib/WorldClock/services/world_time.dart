
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    try {
      // https://worldtimeapi.org/api/timezone/Asia/Kolkata
      var uri = Uri.https('worldtimeapi.org', url);
      print(uri);
      var response = await get(uri);
      var decodedData = jsonDecode(response.body);

      var datetime = decodedData['datetime'];
      var offset = decodedData['utc_offset'].substring(1, 3);

      var now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    } catch(e) {
      print('Error $e');
      time = 'Couldn\'t get data';
    }
  }

}