import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';

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
      String phoneNumber = '+212700000000';
      String regionCode = 'MA';

      var formattedNumber =
          await PhoneNumberUtil.formatAsYouType(phoneNumber, regionCode);

      var valid = await PhoneNumberUtil.isValidPhoneNumber(phoneNumber, regionCode);

      print('\n\n\n Output ==>> $formattedNumber \n\n\n');
      print('\n\n\n Output Valid ==>> $valid \n\n\n');
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
