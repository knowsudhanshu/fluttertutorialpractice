import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var mapData = {};

  @override
  Widget build(BuildContext context) {

    mapData = ModalRoute.of(context)!.settings!.arguments as Map;

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/location');
                      },
                      child: Text('Edit Location')
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mapData['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    mapData['time'],
                    style: TextStyle(
                        fontSize: 66.0,
                    ),
                  )
                ]
            ),
          ),
      ),
    );
  }
}
