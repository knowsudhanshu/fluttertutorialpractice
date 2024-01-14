import 'package:flutter/material.dart';
import 'package:ninja_id/WorldClock/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String loading = 'Loading';

  void setupWorldTime() async {
    var apiPath = '/api/timezone/';
    var instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: '${apiPath}Europe/Berlin');
    await instance.getTime();
    setState(() {
      loading = instance.time.toString();
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(50),
          child: Text(loading),
      )
    );
  }
}
