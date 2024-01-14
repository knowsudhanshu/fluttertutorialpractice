
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool isDaytime = false;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    try {
      // https://worldtimeapi.org/api/timezone/Asia/Kolkata
      var apiPath = '/api/timezone/$url';
      print(apiPath);
      var uri = Uri.https('worldtimeapi.org', apiPath);
      print(uri);
      var response = await get(uri);
      var decodedData = jsonDecode(response.body);

      var datetime = decodedData['datetime'];
      var offset = decodedData['utc_offset'].substring(1, 3);

      var now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = (now.hour > 6 && now.hour < 20) ? true : false;
      time = DateFormat.jm().format(now);
    } catch(e) {
      print('Error $e');
      time = 'Couldn\'t get data';
    }
  }

}