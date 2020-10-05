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
          title: Text('Bhargav Kantheti'),
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
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
