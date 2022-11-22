import 'package:flutter/material.dart';
import 'package:untitled/api/google_signin_api.dart';
import 'package:untitled/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/signup.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Demo',
      home: SocialAuth(),
    );
  }

}


