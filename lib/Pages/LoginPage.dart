import 'package:flutter/material.dart';
import 'package:japoneses/Pages/HomePage.dart';

import 'package:japoneses/Widgets/Constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            _Header(height: _height, width: _width),
            SizedBox(height: 10),
            _Input(),
            SizedBox(height: 30),
            Container(
              width: _width - 80,
              height: 50,
              decoration: BoxDecoration(
                color: containersColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlatButton(
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                    (route) => false),
                splashColor: Colors.black,
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.2,
            ),
            Container(
              width: _width - 50,
              margin: EdgeInsets.only(left: _width / 2 - 115),
              child: Row(
                children: [
                  Text(
                    "Don't have account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Sign Up Now!',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
    @required double height,
    @required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height * 0.15,
      width: _width,
      decoration: BoxDecoration(color: backgroundColor),
      child: Center(
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}

class _Input extends StatelessWidget {
  const _Input({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 17),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            icon: Icon(Icons.person, color: Colors.grey),
            hintText: 'NickName',
            hintStyle: TextStyle(color: Colors.grey),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
