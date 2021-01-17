import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:japoneses/Pages/HomePage.dart';

import 'package:japoneses/Pages/SecondArcadePage.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class ArcadePage extends StatelessWidget {
  const ArcadePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false),
        ),
        toolbarHeight: kToolbarHeight / 1.5,
        elevation: 0,
        title: Text(
          'ARCADE',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            _Header(),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'TITLE',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
            ),
            _CenterContainer(width: _width)
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Container(
              width: 35.0 * 2,
              height: 35.0 * 2,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                MyFlutterApp.bat4,
                color: Colors.white,
                size: 45,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(),
        ),
        Expanded(
          child: Center(
            child: Container(
              height: 100,
              width: 80,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class _CenterContainer extends StatelessWidget {
  const _CenterContainer({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        height: 300,
        width: _width,
        color: containersColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'THIS IS A TITLE',
                style: TextStyle(color: titleColor, fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: _width > 340 ? _width / 3 : _width / 3.5,
                    height: 60,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: _width > 340 ? _width / 2.5 : _width / 3,
                    height: 100,
                    child: Text(
                      textExample,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: _width - 40,
                  height: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 18, left: 10),
                      hintText: 'ID',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: containColor)),
                      fillColor: containColor,
                      filled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: containColor),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: SizedBox(
                height: 30,
                width: 100,
                child: FlatButton(
                  color: Colors.black45,
                  splashColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondArcadePage(),
                    ));
                  },
                  child: Center(
                    child: Text(
                      'BUTTON',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
