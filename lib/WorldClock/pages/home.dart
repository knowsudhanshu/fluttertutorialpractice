import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    child: Text('Edit Location')),
              ]
          ),
      ),
    );
  }
}
