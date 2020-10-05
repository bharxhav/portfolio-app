import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    // bool darkTheme = true;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portefeuille'),
          leading: Icon(Icons.account_circle),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/bharxhav.png',
                fit: BoxFit.fitHeight,
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bhargav Kantheti',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'SansitaSwashed',
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.orange[700],
                ),
              ),
              Container(
                child: Text(
                  'Well, now you know!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: 'SansitaSwashed',
                    fontSize: 16,
                  ),
                ),
                padding: EdgeInsets.all(16.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 260.0,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 30.0,
                  left: 50.0,
                  right: 50.0,
                ),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      // color: Colors.white,
                      ),
                  gradient: LinearGradient(colors: [
                    Colors.teal,
                    Colors.orange[700],
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                      child: Text(
                        '+91 8897060465',
                        style: TextStyle(
                          fontFamily: 'SansitaSwashed',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 30.0,
                  left: 50.0,
                  right: 50.0,
                ),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      // color: Colors.white,
                      ),
                  gradient: LinearGradient(colors: [
                    Colors.teal,
                    Colors.orange[700],
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                      child: Text(
                        'kbhargav.gitam@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SansitaSwashed',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/qr_icon.png',
                fit: BoxFit.fitHeight,
                width: 50,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
