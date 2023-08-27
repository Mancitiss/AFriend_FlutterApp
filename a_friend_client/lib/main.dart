import 'dart:async';

import 'package:a_friend_client/services/version_manager.dart';
import 'package:a_friend_client/pages/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  if (kDebugMode) {
    print('Running');
  }
  try {
    //bool newVersion = await VersionManager.checkNewVersion();
    bool newVersion = false;
    // If there is a new version, download and launch it.
    // ignore: dead_code
    if (newVersion) {
      VersionManager.downloadNewVersion();
    } else {
      // If there is no new version, launch the application.
      if (kDebugMode) {
        print('A Friend, version ${VersionManager.getVersion()}');
      }
      runApp(const LoginScreen());
    }
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int progress = 0;

  @override
  void initState() {
    super.initState();
    // Timer to update the progress bar every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        progress+=20;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loading Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progress / 100,
              ),
              Text('$progress%'),
            ],
          ),
        ),
      ),
    );
  }
}