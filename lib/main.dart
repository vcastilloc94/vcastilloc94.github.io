import 'package:flutter/material.dart';
import 'package:japoneses/Pages/LoginPage.dart';
import 'package:japoneses/Widgets/Constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'VarelaRound',
        backgroundColor: backgroundColor,
        primaryColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
