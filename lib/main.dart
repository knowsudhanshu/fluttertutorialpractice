import 'package:flutter/material.dart';
import 'package:ninja_id/WorldClock/pages/choose_location.dart';
import 'package:ninja_id/WorldClock/pages/home.dart';
import 'WorldClock/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}