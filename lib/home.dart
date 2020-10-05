import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _phone = '+91 8897060465';
  String _email = 'kbhargav.gitam@gmail.com';
  String _name = 'Bhargav Kantheti';
  bool _qrOpen = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    // bool darkTheme = true;

    // Launches the Email App
    void _launchEmail(String _email) {
      launch("mailto:$_email?subject=HelloThere!");
    }

    // Launches the Pho ne App
    void _launchPhone(String _phone) {
      launch("tel:" + _phone);
    }

    // Changes to QR Mode
    void _qrState() {
      setState(() {
        _qrOpen = !_qrOpen;
      });
    }

    // Launches the QR Code
    Widget _qrWidget() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data:
                  "contact:{\nname:{$_name}\nphone:{$_phone}\nemail:{$_email}\n}",
              version: QrVersions.auto,
              size: _width * .60,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: _qrState,
              child: Text('Back'),
              color: Colors.teal,
            )
          ],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portefeuille'),
          leading: Icon(Icons.account_circle),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: _qrOpen
            ? _qrWidget()
            : Center(
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
                      _name,
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
                        width: 280.0,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchPhone(_phone),
                      child: Container(
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
                          gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              Colors.orange[700],
                            ],
                            begin: Alignment(0.2, 0.8),
                            end: Alignment(0.9, 0.0),
                          ),
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
                                _phone,
                                style: TextStyle(
                                  fontFamily: 'SansitaSwashed',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchEmail(_email),
                      child: Container(
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
                          gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              Colors.orange[700],
                            ],
                            begin: Alignment(0.3, 0.8),
                            end: Alignment(0.8, 0.3),
                          ),
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
                                _email,
                                style: TextStyle(
                                  fontFamily: 'SansitaSwashed',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: _qrState,
                      child: Image.asset(
                        'assets/qr_icon.png',
                        fit: BoxFit.fitHeight,
                        width: 50,
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
