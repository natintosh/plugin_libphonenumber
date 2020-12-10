import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:libphonenumber/phone_number_util.dart';

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
      String phoneNumber = '15556761234';
      String regionCode = 'US';

      String formattedNumber =
          await PhoneNumberUtil.formatAsYouType(phoneNumber, regionCode);

      print('\n\n\n Output ==>> $formattedNumber \n\n\n');
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
