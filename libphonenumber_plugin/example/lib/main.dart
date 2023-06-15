import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    try {
      String phoneNumber = '+212700000000';
      String regionCode = 'US';

      var formattedNumber =
          await PhoneNumberUtil.formatAsYouType(phoneNumber, regionCode);

      log('\n\n\n Output ==>> $formattedNumber \n\n\n');

      var regionInfo = await PhoneNumberUtil.getRegionInfo(phoneNumber, '');
      log('\n\n\n Output Valid ==>> $regionInfo \n\n\n');

      var countries = await PhoneNumberUtil.getAllCountries();

      var exampleNumber = await PhoneNumberUtil.getFormattedExampleNumber(
          regionCode, PhoneNumberType.MOBILE, PhoneNumberFormat.INTERNATIONAL);

      log('\n\n\n Output Countries ==>> $countries \n\n\n');
      log('\n\n\n Output Example Number ==>> $exampleNumber \n\n\n');

      phoneNumber = '+2348021234567';

      final normalizedNumber = await PhoneNumberUtil.normalizePhoneNumber(phoneNumber, 'NG', PhoneNumberFormat.NATIONAL);

      log('\n\n\n Output NormalizedNumber ===> $normalizedNumber \n\n\n');

      String digits = '';
      for (final number in phoneNumber.characters) {
        digits += number;
        final formattedNumber =
            await PhoneNumberUtil.formatAsYouType(digits, 'NG');

        log(' Output AsYouTypeFormatter ==>> $formattedNumber');
      }
    } on PlatformException catch (e) {
      log('\n\n\n PLATFORM EXCEPTION: \n\n\n $e \n\n\n');
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
              icon: const Icon(Icons.refresh),
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
