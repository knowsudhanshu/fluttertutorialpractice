import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object? mapData;

  @override
  Widget build(BuildContext context) {

    mapData = ModalRoute.of(context)?.settings?.arguments;

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
