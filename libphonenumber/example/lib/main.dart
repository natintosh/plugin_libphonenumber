import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:libphonenumber/asyoutypeformatter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    try {
      String phonenumber = '15556761234';
      AsYouTypeFormatter asYouTypeFormatter = AsYouTypeFormatter();
      asYouTypeFormatter.initialize('US');

      for (String number in phonenumber.split('')) {
        print(
            'FORMATTED INPUT: ${await asYouTypeFormatter.inputDigitAndRememberPosition(number)}');
      }
    } on PlatformException catch (e) {
      print('\n\n\n PLATFORM EXCEPTION: \n\n\n $e \n\n\n');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => initPlatformState(),
            )
          ],
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
