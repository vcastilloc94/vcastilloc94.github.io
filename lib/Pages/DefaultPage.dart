import 'package:flutter/material.dart';
import 'package:japoneses/Widgets/Constant.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'This is the Default Page',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
