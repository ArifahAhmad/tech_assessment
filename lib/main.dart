import 'package:flutter/material.dart';
import 'package:tech_assessment/educate-user.dart';
import 'package:tech_assessment/list-contact.dart';
import 'package:tech_assessment/spalsh-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

