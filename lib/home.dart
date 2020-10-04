import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bhargav Kantheti'),
          leading: Icon(Icons.account_circle),
          backgroundColor: Colors.red,
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
