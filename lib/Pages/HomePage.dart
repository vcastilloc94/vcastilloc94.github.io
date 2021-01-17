import 'package:flutter/material.dart';
import 'package:japoneses/Pages/ContainOfHome.dart';
import 'package:japoneses/Pages/GamePage.dart';
import 'package:japoneses/Pages/SettingsPage.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/Widgets/CustomBottonNavigatorBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ContainOfHome(),
          GamePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: CustomBottonNavigatorBar(
        onTapChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
