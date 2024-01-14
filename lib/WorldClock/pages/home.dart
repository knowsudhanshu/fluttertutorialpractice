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

    mapData = ModalRoute.of(context)!.settings.arguments as Map;
    var bgImage = mapData['isDaytime'] ? 'day.png' : 'night.png';

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
              child: Column(
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/location');
                        },
                        child: const Text('Edit Location')
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mapData['location'],
                          style: const TextStyle(
                            fontSize: 28.0,
                            letterSpacing: 2.0
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      mapData['time'],
                      style: const TextStyle(
                          fontSize: 66.0,
                      ),
                    )
                  ]
              ),
            ),
          ),
      ),
    );
  }
}
